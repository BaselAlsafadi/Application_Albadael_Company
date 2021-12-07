import 'package:albadael/Models/About-Us/team.dart';
import 'faq.dart';

class Data {
  late List<Team> team;
  late List<Faq> faq;

  Data({required this.team});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['team'] != null) {
      team = <Team>[];
      json['team'].forEach((v) {
        team.add(new Team.fromJson(v));
      });
    }
    if (json['faq'] != null) {
      faq = <Faq>[];
      json['faq'].forEach((v) {
        faq.add(new Faq.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    if (this.team != null) {
      data['team'] = this.team.map((v) => v.toJson()).toList();
    }
    if (this.faq != null) {
      data['faq'] = this.faq.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
