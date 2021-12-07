class Service {
  int id;
  String icon;
  String title;
  String slug;
  String quote;
  String desc;
  String createdAt;
  String updatedAt;

  Service(
      {required this.id,
      required this.icon,
      required this.title,
      required this.slug,
      required this.quote,
      required this.desc,
      required this.createdAt,
      required this.updatedAt});

  factory Service.fromJson(Map<String, dynamic> json) {
    return Service(
      id: json['id'],
      icon: json['icon'],
      title: json['title'],
      slug: json['slug'],
      quote: json['quote'],
      desc: json['desc'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['slug'] = this.slug;
    data['quote'] = this.quote;
    data['desc'] = this.desc;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
