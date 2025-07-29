class Course {
  final String title;
  final String description;
  final DateTime publishedAt;
  final String? videoUrl;
  final String? imageUrl;

  Course({
    required this.title,
    required this.description,
    required this.publishedAt,
    this.videoUrl,
    this.imageUrl,
  });

  bool get hasVideo => videoUrl != null && videoUrl!.isNotEmpty;
}
