class Faq {
  late int id;
  late String question;
  late String answer;
  late String createdAt;
  late String updatedAt;

  Faq(
      {required this.id,
      required this.question,
      required this.answer,
      required this.createdAt,
      required this.updatedAt});

  Faq.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    answer = json['answer'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['question'] = this.question;
    data['answer'] = this.answer;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
