import 'package:albadael/Constant/api_connection.dart';
import 'package:albadael/Models/Home/autogenerated.dart';
import 'package:albadael/Widget/Drawer/drawer.dart';
import 'package:albadael/Widget/HomePage/banner.dart';
import 'package:albadael/Widget/HomePage/section_services.dart';
import 'package:albadael/Widget/HomePage/section_about_us.dart';
import 'package:albadael/Widget/Public/divider_between_section.dart';
import 'package:albadael/Widget/Footer/footer.dart';
import 'package:albadael/Widget/Public/title_name_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            drawer: Wdrawer(),
            body: SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                children: [
                  Title_name_screen(
                    title: 'Home Page',
                  ),
                  banner_in_homepage(),
                  Divider_between_section(
                    name: 'About Us',
                  ),
                  Section_about_us(),
                  Divider_between_section(
                    name: 'Services',
                  ),
                  Section_Services(),
                  Footer(),
                ],
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
