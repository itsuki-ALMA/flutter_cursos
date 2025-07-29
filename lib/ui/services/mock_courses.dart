import '../../models/course.dart';

class CourseService {
  static List<Course> getCourses() {
    return [
      Course(
        title: 'Curso de Flutter',
        description: 'Aprenda Flutter do zero.',
        imageUrl: 'assets/images/thumb1.jpg',
        videoUrl: 'assets/videos/videoTeste.mp4',
        publishedAt: DateTime(2024, 5, 10),
      ),
      Course(
        title: 'Curso sem vídeo',
        description: 'Esse curso ainda está em produção.',
        imageUrl: 'assets/images/thumb1.jpg',
        videoUrl: 'assets/videos/audioTeste.mp4',
        publishedAt: DateTime(2024, 6, 1),
      ),
            Course(
        title: 'Curso sem vídeo',
        description: 'Esse curso ainda está em produção., Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.Esse curso ainda está em produção.',
        imageUrl: 'assets/images/thumb1.jpg',
        videoUrl: 'assets/videos/audioTeste.mp4',
        publishedAt: DateTime(2024, 6, 1),
      ),
    ];
  }
}
