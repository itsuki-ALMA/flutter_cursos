import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../models/course.dart';

class CourseInfo extends StatefulWidget {
  final Course course;
  final VoidCallback onNext;
  final VoidCallback onPrevious;
  final bool hasNext;
  final bool hasPrevious;

  const CourseInfo({
    super.key,
    required this.course,
    required this.onNext,
    required this.onPrevious,
    required this.hasNext,
    required this.hasPrevious,
  });

  @override
  State<CourseInfo> createState() => _CourseInfoState();
}

class _CourseInfoState extends State<CourseInfo> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final date = DateFormat('dd/MM/yyyy').format(widget.course.publishedAt);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.course.title, style: textTheme.titleLarge?.copyWith(color: colorScheme.onSurface)),
          const SizedBox(height: 8),
          Text(
            'Publicado em $date',
            style: textTheme.bodyMedium?.copyWith(color: colorScheme.onSurfaceVariant),
          ),
          const SizedBox(height: 8),

          // Descrição expansível
          LayoutBuilder(
            builder: (context, constraints) {
              final textSpan = TextSpan(
                text: widget.course.description,
                style: textTheme.bodyMedium?.copyWith(color: colorScheme.onSurfaceVariant),
              );

              final textPainter = TextPainter(
                text: textSpan,
                maxLines: 7,
                textDirection: Directionality.of(context),
              );

              textPainter.layout(maxWidth: constraints.maxWidth);

              final exceeded = textPainter.didExceedMaxLines;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.course.description,
                    maxLines: _isExpanded ? null : 7,
                    overflow: TextOverflow.fade,
                    style: textTheme.bodyMedium?.copyWith(color: colorScheme.onSurfaceVariant),
                  ),
                  if (exceeded || _isExpanded)
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton.icon(
                        onPressed: () {
                          setState(() {
                            _isExpanded = !_isExpanded;
                          });
                        },
                        icon: Icon(
                          _isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                          color: colorScheme.primary,
                        ),
                        label: Text(
                          _isExpanded ? 'Mostrar menos' : 'Mostrar mais',
                          style: TextStyle(color: colorScheme.primary),
                        ),
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                    ),
                ],
              );
            },
          ),

          const SizedBox(height: 16),

          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: widget.hasPrevious ? widget.onPrevious : null,
                  icon: const Icon(Icons.skip_previous),
                  label: const Text('Vídeo anterior'),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: widget.hasNext ? widget.onNext : null,
                  icon: const Icon(Icons.skip_next),
                  label: const Text('Próximo vídeo'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
