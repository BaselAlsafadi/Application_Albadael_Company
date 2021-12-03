class Pcategories {
  int id;
  String name;
  String createdAt;
  String updatedAt;

  Pcategories(
      {required this.id,
      required this.name,
      required this.createdAt,
      required this.updatedAt});

  factory Pcategories.fromJson(Map<String, dynamic> json) {
    return Pcategories(
      id: json['id'],
      name: json['name'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
