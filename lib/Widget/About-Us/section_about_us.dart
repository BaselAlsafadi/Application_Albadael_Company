import 'package:albadael/Constant/api_connection.dart';
import 'package:albadael/Models/Home/autogenerated.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Section_About_us_In_Screen_About_us extends StatefulWidget {
  const Section_About_us_In_Screen_About_us({Key? key}) : super(key: key);

  @override
  _Section_About_us_In_Screen_About_usState createState() =>
      _Section_About_us_In_Screen_About_usState();
}

// ignore: camel_case_types
class _Section_About_us_In_Screen_About_usState
    extends State<Section_About_us_In_Screen_About_us> {
  late Future<Autogenerated?> apiCall;

  @override
  void initState() {
    super.initState();
    // data = readdata();
    apiCall = getdatapublic();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Autogenerated?>(
        future: apiCall,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    snapshot.data!.data.about.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xff2c4755)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: Text(
                    snapshot.data!.data.about.subject,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    snapshot.data!.data.about.title,
                  ),
                ),
              ],
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return Center(
              child: Container(
            height: MediaQuery.of(context).size.height / 50,
            width: MediaQuery.of(context).size.width / 4,
          ));
        });
  }
}
