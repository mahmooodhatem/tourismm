import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      fixedColor: Colors.greenAccent.withOpacity(.9) ,
      unselectedItemColor: Colors.white.withOpacity(.7),
      items: const [
        BottomNavigationBarItem(icon: Icon(
          Icons.home,
          size: 30,
        ),
          label: "Home",),
        BottomNavigationBarItem(icon: Icon(
          Icons.event_note_outlined,
        ),
          label: "Events",),
        BottomNavigationBarItem(icon: Icon(
          Icons.people,
        ),
          label: "Committees",),
        BottomNavigationBarItem(icon: Icon(
          Icons.newspaper,
        ),
          label: "Blogs",),
        BottomNavigationBarItem(icon: Icon(
          Icons.video_library_sharp,
        ),
          label: "Videos",),
      ],
    );
  }
}
