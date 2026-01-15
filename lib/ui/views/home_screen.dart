import 'package:flutter/material.dart';
import '../widgets/card_widget.dart';
import '../services/mock_courses.dart';
import '../widgets/custom_app_bar_widget.dart';
import '../widgets/side_menu_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final courses = CourseService.getCourses();

    return Scaffold(
      appBar: const CustomAppBar(title: "Sistema de Treinamento"),
      drawer: const SideMenu(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 12),
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: CardWidget(
              imageUrl: (course.imageUrl?.isEmpty ?? true) ? null : course.imageUrl,
              title: course.title,
              description: course.description,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  'video',
                  arguments: index,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
