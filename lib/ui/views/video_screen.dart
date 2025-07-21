import 'package:flutter/material.dart';
import '../services/course_service.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final course = ModalRoute.of(context)!.settings.arguments as Course;

    return Scaffold(
      appBar: AppBar(
        title: Text(course.title),
      ),
      body: Center(
        child: Text('Aqui vai o player do vídeo para: ${course.title}'),
      ),
    );
  }
}
