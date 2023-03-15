import 'package:flutter/material.dart';

import '../screen2.dart';

class BodyHome extends StatefulWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  State<BodyHome> createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: 130,
                    top: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70) ,
                      child: const Image(
                          width: 130,
                          height: 200,
                          fit: BoxFit.cover,
                          image:  NetworkImage(
                              "https://www.presidency.eg/media/93222/big_12015_01_24_06_31_30jpg.jpg"
                          )),
                    ),
                  ),
                  Positioned(
                    left: 70,
                    top: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70) ,
                      child: const Image(
                          width: 130,
                          height: 200,
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://www.traveldailymedia.com/assets/2022/10/shutterstock_1014644104.jpg"
                          )),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 180,),
            const Text("Travel with ease.",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600
              ),
            ),
            const SizedBox(height: 25,),
            Text("Lorem ipsum dolor sit amet, consectetur  \n adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              softWrap: true,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black.withOpacity(.6),
              ),
            ),
            const SizedBox(height: 60,),
            SizedBox(
              height: 60,
              width: 200,
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>  Search()));
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal.shade500,
                  shadowColor: const Color.fromRGBO(1, 32, 20, 1),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                    )
                ),
                child: const Text(
                  "Get started",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
