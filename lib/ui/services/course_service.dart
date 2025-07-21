class Course {
  final String imageUrl;
  final String title;
  final String description;

  Course({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}

class CourseService {
  static List<Course> getCourses() {
    return [
      Course(
        imageUrl: 'assets/images/thumb1.jpg',
        title: 'Aprenda Flutter',
        description: 'Aprenda a criar apps com Flutter do zero.',
      ),
      Course(
        imageUrl: '',
        title: 'Cmo fazer widgets para modularização',
        description: 'Aprenda a criar widgets para Flutter do zero.',
      ),
      Course(
        imageUrl: '',
        title: 'Routes',
        description: 'Aprenda a criar rotas para Flutter do zero.',
      ),
    ];
  }
}
