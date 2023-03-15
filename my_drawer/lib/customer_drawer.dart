import 'package:flutter/material.dart';

import 'feed_back.dart';

class CustomerDrawer extends StatelessWidget {
  const CustomerDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                      "https://scontent.fcai21-1.fna.fbcdn.net/v/t39.30808-6/319013650_5661606433953491_4390735723708720518_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=OoXCNP6xrr8AX9GIjQT&_nc_ht=scontent.fcai21-1.fna&oh=00_AfCr3yS50G6nu97ac4-qEPvu7fbdUzg1SxBYDkKMzKxi0g&oe=64179B8A"
                  ),
                ),
                const SizedBox(height: 5,),
                Text("Mahmoud Hatem",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(.7)
                  ),
                ),
              ],

            ),
          ),
          const Divider(height: 30,
            thickness: 1.5,
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: Colors.black,
              size: 25,
            ),
            title: Text("Home",
              style: TextStyle(
                  color: Colors.black.withOpacity(.8),
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.help,
              color: Colors.black,
              size: 25,
            ),
            title: Text("Help",
              style: TextStyle(
                  color: Colors.black.withOpacity(.8),
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.feedback,
              color: Colors.black,
              size: 25,
            ),
            title: Text("FeedBack",
              style: TextStyle(
                  color: Colors.black.withOpacity(.8),
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => FeedBack(),
              ));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.people,
              color: Colors.black,
              size: 25,
            ),
            title: Text("Invite Friend",
              style: TextStyle(
                  color: Colors.black.withOpacity(.8),
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.share,
              color: Colors.black,
              size: 25,
            ),
            title: Text("Rate The App",
              style: TextStyle(
                  color: Colors.black.withOpacity(.8),
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.security_update_warning,
              color: Colors.black,
              size: 25,
            ),
            title: Text("About Us",
              style: TextStyle(
                  color: Colors.black.withOpacity(.8),
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),
          ),
          const SizedBox(height: 30,),
          const Divider(height: 20,
            thickness: 1.5,
          ),
          const SizedBox(height: 15,),
          ListTile(
            trailing: const Icon(
              Icons.login_outlined,
              color: Colors.red,
              size: 25,
            ),
            leading: Text("Sign Out",
              style: TextStyle(
                  color: Colors.black.withOpacity(.8),
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),
          ),
        ],
      ),
    );
  }
}
