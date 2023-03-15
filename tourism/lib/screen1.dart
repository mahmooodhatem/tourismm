import 'package:flutter/material.dart';
import 'package:tourism/const/app_bar.dart';

import 'const/body_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  PreferredSize (
        preferredSize: Size.fromHeight(0),
        child: CustomAppBar(),
      ),
      body: BodyHome(),

    );
  }
}
