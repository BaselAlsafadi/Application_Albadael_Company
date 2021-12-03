class Banner {
  int id;
  String cover;
  String title;
  String desc;
  String link;
  String createdAt;
  String updatedAt;

  Banner(
      {required this.id,
      required this.cover,
      required this.title,
      required this.desc,
      required this.link,
      required this.createdAt,
      required this.updatedAt});

  factory Banner.fromJson(Map<String, dynamic> json) {
    return Banner(
      id: json['id'],
      cover: json['cover'],
      title: json['title'],
      desc: json['desc'],
      link: json['link'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['cover'] = this.cover;
    data['title'] = this.title;
    data['desc'] = this.desc;
    data['link'] = this.link;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
