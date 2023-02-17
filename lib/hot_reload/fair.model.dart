class FairModel {
  String? name;
  String? path;
  dynamic arguments;

  FairModel({
    required this.name,
    required this.path,
    required this.arguments,
  });

  factory FairModel.fromJson(Map<String, dynamic> json) {
    return FairModel(
      name: json['name'] as String,
      path: json['path'] as String?,
      arguments: json['arguments'] as dynamic,
    );
  }
}
