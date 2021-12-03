class About {
  int id;
  String title;
  String subject;
  String desc;
  Null createdAt;
  String updatedAt;

  About(
      {required this.id,
      required this.title,
      required this.subject,
      required this.desc,
      required this.createdAt,
      required this.updatedAt});

  factory About.fromJson(Map<String, dynamic> json) {
    return About(
      id: json['id'],
      title: json['title'],
      subject: json['subject'],
      desc: json['desc'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['subject'] = this.subject;
    data['desc'] = this.desc;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
