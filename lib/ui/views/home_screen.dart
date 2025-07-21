import 'package:flutter/material.dart';
import '../widgets/card_widget.dart';
import '../services/course_service.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final courses = CourseService.getCourses();

    return Scaffold(
      appBar: const CustomAppBar(title: "Sistema de Treinamento"),
      drawer: const SideMenu(),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];

          return CardWidget(
            imageUrl: course.imageUrl.isEmpty ? null : course.imageUrl,
            title: course.title,
            description: course.description,
            onTap: () {
              Navigator.pushNamed(
                context,
                'video',
                arguments: course,
              );
            },
          );
        },
      ),
    );
  }
}
