
class PostModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  // JSON to Dart Object
  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      userId: int.tryParse(json['userId'].toString()) ?? 0,
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  // Dart Object to JSON
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }
}
