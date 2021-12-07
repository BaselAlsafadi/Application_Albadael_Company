class Partner {
  int id;
  String cover;
  String name;
  String link;
  String createdAt;
  String updatedAt;

  Partner(
      {required this.id,
      required this.cover,
      required this.name,
      required this.link,
      required this.createdAt,
      required this.updatedAt});

  factory Partner.fromJson(Map<String, dynamic> json) {
    return Partner(
      id: json['id'],
      cover: json['cover'],
      name: json['name'],
      link: json['link'].toString(),
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['cover'] = this.cover;
    data['name'] = this.name;
    data['link'] = this.link;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
