import 'package:albadael/Constant/api_connection.dart';
import 'package:albadael/Models/Public_API/autogenerated.dart';
import 'package:albadael/Widget/Footer/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Blog extends StatefulWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
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
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height / 20,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(color: Colors.grey[200]),
                        child: Text(
                          'Blog',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2c4755)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          primary: false,
                          shrinkWrap: true,
                          itemCount: snapshot.data!.data.lpost.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: Container(
                                alignment: Alignment.topCenter,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, right: 8),
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                3,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: getimage(snapshot.data!
                                                    .data.lpost[index].cover))),
                                      ),
                                    ),
                                    Text(
                                      snapshot.data!.data.lpost[index].slug,
                                      style: TextStyle(
                                          color: Color(0xff2c4755),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      snapshot.data!.data.lpost[index].title,
                                      style:
                                          TextStyle(color: Color(0xff2c4755)),
                                    ),
                                    Html(
                                        data: snapshot
                                            .data!.data.lpost[index].body),
                                    Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(children: [
                                            Icon(Icons.remove_red_eye),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(snapshot
                                                .data!.data.lpost[index].views
                                                .toString()),
                                          ]),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.messenger_sharp,
                                              ),
                                              SizedBox(
                                                width: 6,
                                              ),
                                              Text(snapshot.data!.data
                                                  .lpost[index].keyword)
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    Footer()
                  ])),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return Center(child: CircularProgressIndicator());
        });
  }
}
