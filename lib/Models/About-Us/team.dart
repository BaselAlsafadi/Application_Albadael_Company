class Team {
  late int id;
  late String name;
  late String position;
  late String photo;
  late String? facebook;
  late String? twitter;
  late String? instagram;
  late String? linkedin;
  late String createdAt;
  late String updatedAt;

  Team(
      {required this.id,
      required this.name,
      required this.position,
      required this.photo,
      required this.facebook,
      required this.twitter,
      required this.instagram,
      required this.linkedin,
      required this.createdAt,
      required this.updatedAt});

  Team.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    position = json['position'];
    photo = json['photo'];
    facebook = json['facebook'];
    twitter = json['twitter'];
    instagram = json['instagram'];
    linkedin = json['linkedin'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['position'] = this.position;
    data['photo'] = this.photo;
    data['facebook'] = this.facebook;
    data['twitter'] = this.twitter;
    data['instagram'] = this.instagram;
    data['linkedin'] = this.linkedin;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
