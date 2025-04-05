class RecommendedGroup {
  final int id;
  final String title;
  final String description;
  final String category;
  final String field;
  final String attendance;
  final String meet;
  final String mood;
  final bool approve;
  final int numMembers;
  final int maxMembers;
  final String thumbnail;

  RecommendedGroup({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.field,
    required this.attendance,
    required this.meet,
    required this.mood,
    required this.approve,
    required this.numMembers,
    required this.maxMembers,
    required this.thumbnail,
  });

  factory RecommendedGroup.fromJson(Map<String, dynamic> json) {
    return RecommendedGroup(
      id: json['id'],
      title: json['title'],
      description: json['description'] ?? '',
      category: json['category'],
      field: json['field'],
      attendance: json['attendance'],
      meet: json['meet'],
      mood: json['mood'],
      approve: json['approve'],
      numMembers: json['num_members'],
      maxMembers: json['max_members'],
      thumbnail: json['thumbnail'] ?? '',
    );
  }
}