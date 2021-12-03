import 'package:albadael/Constant/api_connection.dart';
import 'package:albadael/Models/Public_API/autogenerated.dart';
import 'package:albadael/Widget/Footer/footer.dart';
import 'package:albadael/Widget/Public/title_name_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Srevices extends StatefulWidget {
  const Srevices({Key? key}) : super(key: key);

  @override
  _SrevicesState createState() => _SrevicesState();
}

class _SrevicesState extends State<Srevices> {
  late Future<Autogenerated> data;

  @override
  void initState() {
    super.initState();
    data = readdata();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Autogenerated>(
        future: data,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
                appBar: AppBar(
                  backgroundColor: Color(0xff2c4755),
                  title: Text(snapshot.data!.data.about.title),
                ),
                body: SingleChildScrollView(
                  physics: ScrollPhysics(),
                  child: Column(children: [
                    Title_name_screen(title: "Services"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          primary: false,
                          shrinkWrap: true,
                          itemCount: snapshot.data!.data.service.length,
                          itemBuilder: (context, index) {
                            return Column(children: [
                              Icon(
                                snapshot.data!.data.service[index].id == 5
                                    ? Icons.laptop
                                    : snapshot.data!.data.service[index].id == 2
                                        ? Icons.design_services
                                        : snapshot.data!.data.service[index]
                                                    .id ==
                                                3
                                            ? Icons.web_asset
                                            : snapshot.data!.data.service[index]
                                                        .id ==
                                                    4
                                                ? Icons.mobile_friendly
                                                : snapshot
                                                            .data!
                                                            .data
                                                            .service[index]
                                                            .id ==
                                                        1
                                                    ? Icons.image
                                                    : snapshot
                                                                .data!
                                                                .data
                                                                .service[index]
                                                                .id ==
                                                            6
                                                        ? Icons.mobile_friendly
                                                        : Icons.app_blocking,
                                color: Color(0xff1abc9c),
                                size: 35,
                              ),
                              Text(
                                snapshot.data!.data.service[index].title,
                                style: TextStyle(
                                    color: Color(0xff2c4755),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                snapshot.data!.data.service[index].quote,
                                softWrap: true,
                                style: TextStyle(
                                  color: Color(0xff1abc9c),
                                ),
                              ),
                              Html(
                                  data: snapshot.data!.data.service[index].desc)
                            ]);
                          }),
                    ),
                    Footer()
                  ]),
                ));
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return Center(child: CircularProgressIndicator());
        });
  }
}