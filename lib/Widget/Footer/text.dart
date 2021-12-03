import 'package:flutter/material.dart';

class text_footer extends StatelessWidget {
  final String title;
  const text_footer({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(color: Colors.white),
    );
  }
}
