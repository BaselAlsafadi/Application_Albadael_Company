class Link {
  int id;
  String name;
  String link;
  String createdAt;
  String updatedAt;

  Link(
      {required this.id,
      required this.name,
      required this.link,
      required this.createdAt,
      required this.updatedAt});

  factory Link.fromJson(Map<String, dynamic> json) {
    return Link(
      id: json['id'],
      name: json['name'],
      link: json['link'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['link'] = this.link;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
