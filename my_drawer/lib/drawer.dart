import 'package:flutter/material.dart';
import 'package:my_drawer/customer_drawer.dart';
import 'package:my_drawer/feed_back.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
      drawer: const CustomerDrawer(),
    );
  }
}
