import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class social_media_in_footer extends StatelessWidget {
  const social_media_in_footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
            onTap: () async {
              var url = "https://facebook.com/badaelonline";

              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Container(
              height: 25,
              width: 25,
              child: Image.asset("assets/images/facebook.png"),
            )),
        SizedBox(width: 10),
        InkWell(
            onTap: () async {
              var url = "https://instagram.com/badaelonline";

              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Container(
              height: 25,
              width: 25,
              child: Image.asset("assets/images/instagram.png"),
            )),
        SizedBox(width: 10),
        InkWell(
            onTap: () async {
              var url = "https://linkedin.com/badaelonline";

              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Container(
              height: 25,
              width: 25,
              child: Image.asset("assets/images/linkedin.png"),
            )),
        SizedBox(width: 10),
        InkWell(
            onTap: () async {
              var url = "https://twitter.com/badaelonline";

              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: Container(
              height: 25,
              width: 25,
              child: Image.asset("assets/images/twitter.png"),
            ))
      ],
    );
  }
}
