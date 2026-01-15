import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String? imageUrl;
  final String title;
  final String description;
  final VoidCallback? onTap;

  const CardWidget({
    super.key,
    this.imageUrl,
    required this.title,
    required this.description,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    Widget imageWidget;

    if (imageUrl == null || imageUrl!.isEmpty) {
      // Usar surfaceContainerHighest para fundo e onSurfaceVariant com opacidade via withAlpha
      imageWidget = Container(
        height: 180,
        color: colorScheme.surfaceContainerHighest,
        child: Center(
          child: Icon(
            Icons.play_circle_outline,
            size: 64,
            // substituindo withOpacity(0.6) por withAlpha(153) (0.6 * 255 ≈ 153)
            color: colorScheme.onSurfaceVariant.withAlpha(153),
          ),
        ),
      );
    } else {
      imageWidget = ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
        child: Image.asset(
          imageUrl!,
          height: 180,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      );
    }

    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            imageWidget,
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: textTheme.titleLarge?.copyWith(color: colorScheme.onSurface),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: textTheme.bodyMedium?.copyWith(color: colorScheme.onSurfaceVariant),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
