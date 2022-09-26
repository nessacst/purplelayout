// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:design/layouts/layout_landscape.dart';
import 'package:design/layouts/layout_portrait.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Color corB = Color.fromARGB(255, 79, 38, 213);

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).orientation;
    return Scaffold(
        backgroundColor: Colors.black,
        body: OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.landscape) {
            return Landscape();
          } else {
            return Portrait();
          }
        }));
  }
}
