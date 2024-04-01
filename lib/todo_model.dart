class TodoModel {
  final int id;
  final String title;
  final String description;
  bool isChacked;

  TodoModel(
      {required this.id,
      required this.title,
      this.description = '',
      this.isChacked = false});
}
