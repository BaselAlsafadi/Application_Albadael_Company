class Portfolio {
  int id;
  int pcategoryId;
  String name;
  String slug;
  String cover;
  String client;
  String date;
  String desc;
  String createdAt;
  String updatedAt;

  Portfolio(
      {required this.id,
      required this.pcategoryId,
      required this.name,
      required this.slug,
      required this.cover,
      required this.client,
      required this.date,
      required this.desc,
      required this.createdAt,
      required this.updatedAt});

  factory Portfolio.fromJson(Map<String, dynamic> json) {
    return Portfolio(
      id: json['id'],
      pcategoryId: json['pcategory_id'],
      name: json['name'],
      slug: json['slug'],
      cover: json['cover'],
      client: json['client'],
      date: json['date'],
      desc: json['desc'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['pcategory_id'] = this.pcategoryId;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['cover'] = this.cover;
    data['client'] = this.client;
    data['date'] = this.date;
    data['desc'] = this.desc;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
