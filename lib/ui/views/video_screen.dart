import 'package:flutter/material.dart';
import '../../models/course.dart';
import '../widgets/video_player_widget.dart';
import '../widgets/course_info_widget.dart';
import '../services/mock_courses.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late List<Course> _courses;
  late int _currentIndex;
  bool _initialized = false;

  @override
  void initState() {
    super.initState();
    _courses = CourseService.getCourses();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_initialized) {
      final args = ModalRoute.of(context)?.settings.arguments;
      if (args is int && args >= 0 && args < _courses.length) {
        _currentIndex = args;
      } else {
        _currentIndex = 0;
      }
      _initialized = true;
    }
  }

  void _nextCourse() {
    if (_currentIndex < _courses.length - 1) {
      setState(() {
        _currentIndex++;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Você já está no último curso.')),
      );
    }
  }

  void _previousCourse() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Você já está no primeiro curso.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentCourse = _courses[_currentIndex];

    return Scaffold(
      appBar: AppBar(title: Text(currentCourse.title)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            VideoPlayer(
              key: ValueKey(currentCourse.videoUrl),
              course: currentCourse,
            ),
            const SizedBox(height: 24),
            CourseInfo(
              course: currentCourse,
              onNext: _nextCourse,
              onPrevious: _previousCourse,
              hasNext: _currentIndex < _courses.length - 1,
              hasPrevious: _currentIndex > 0,
            ),
          ],
        ),
      ),
    );
  }
}
