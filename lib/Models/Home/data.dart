import 'about.dart';
import 'banner.dart';
import 'general.dart';
import 'links.dart';
import 'lpost.dart';
import 'partner.dart';
import 'pcategoraies.dart';
import 'protofolio.dart';
import 'services.dart';

class Data {
  late About about;
  late List<Banner> banner;
  late General general;
  late List<Link> link;
  late List<Lpost> lpost;
  late List<Partner> partner;
  late List<Pcategories> pcategories;
  late List<Portfolio> portfolio;
  late List<Service> service;

  Data(
      {required this.about,
      required this.banner,
      required this.general,
      required this.link,
      required this.lpost,
      required this.partner,
      required this.pcategories,
      required this.portfolio,
      required this.service});

  Data.fromJson(Map<String, dynamic> json) {
    about = json['about'] = new About.fromJson(json['about']);
    if (json['banner'] != null) {
      banner = <Banner>[];
      json['banner'].forEach((v) {
        banner.add(Banner.fromJson(v));
      });
    }
    general = json['general'] = new General.fromJson(json['general']);
    if (json['link'] != null) {
      link = <Link>[];
      json['link'].forEach((v) {
        link.add(new Link.fromJson(v));
      });
    }

    if (json['lpost'] != null) {
      lpost = <Lpost>[];
      json['lpost'].forEach((v) {
        lpost.add(new Lpost.fromJson(v));
      });
    }
    if (json['partner'] != null) {
      partner = <Partner>[];
      json['partner'].forEach((v) {
        partner.add(new Partner.fromJson(v));
      });
    }
    if (json['pcategories'] != null) {
      pcategories = <Pcategories>[];
      json['pcategories'].forEach((v) {
        pcategories.add(new Pcategories.fromJson(v));
      });
    }
    if (json['portfolio'] != null) {
      portfolio = <Portfolio>[];
      json['portfolio'].forEach((v) {
        portfolio.add(new Portfolio.fromJson(v));
      });
    }
    if (json['service'] != null) {
      service = <Service>[];
      json['service'].forEach((v) {
        service.add(new Service.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.about != null) {
      data['about'] = this.about.toJson();
    }
    if (this.banner != null) {
      data['banner'] = this.banner.map((v) => v.toJson()).toList();
    }
    if (this.general != null) {
      data['general'] = this.general.toJson();
    }
    if (this.link != null) {
      data['link'] = this.link.map((v) => v.toJson()).toList();
    }
    if (this.lpost != null) {
      data['lpost'] = this.lpost.map((v) => v.toJson()).toList();
    }
    if (this.partner != null) {
      data['partner'] = this.partner.map((v) => v.toJson()).toList();
    }
    if (this.pcategories != null) {
      data['pcategories'] = this.pcategories.map((v) => v.toJson()).toList();
    }
    if (this.portfolio != null) {
      data['portfolio'] = this.portfolio.map((v) => v.toJson()).toList();
    }
    if (this.service != null) {
      data['service'] = this.service.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
