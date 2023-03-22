import 'package:cis/screens/Board%20Page.dart';
import 'package:cis/screens/custom_navigation_bar.dart';
import 'package:cis/screens/custom_row_board_mentors.dart';
import 'package:cis/screens/image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.greenAccent.withOpacity(.9),
        ),
        leading: const Icon(Icons.menu),
        title: Text(
          "CIS Team",
          style: TextStyle(
            color: Colors.greenAccent.withOpacity(.9),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: ListView(
          shrinkWrap: true,
          children: [
            const Text(
              "Our Events",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            const ImageSliderPage(),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    "Our New Posts",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                TextButton(onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                        color: Colors.greenAccent.withOpacity(.9),
                        fontSize: 15,
                      ),
                    )
                ),
              ],
            ),
            const CustomRow(),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
