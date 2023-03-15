import 'package:flutter/material.dart';
import 'package:tourism/const/app_bar.dart';
import 'package:tourism/images_lost.dart';


class ThirdScreen extends StatefulWidget {
 var image;
ThirdScreen(this.image, {super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  const PreferredSize (
        preferredSize: Size.fromHeight(0),
        child: CustomAppBar(),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0 , right: 24 , bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 400,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius : BorderRadius.circular(15),
                      child: Image(
                         height: 400,
                          width: 400,
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            widget.image
                          )),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0 , left: 16, top: 16),
                          child: CircleAvatar
                            (
                            backgroundColor: Colors.grey.shade300,
                            radius: 20,
                            child: IconButton(
                                onPressed: (){
                                  setState(() {
                                    Navigator.pop(context);
                                  });
                                },
                                icon: const Icon
                                  (
                                  Icons.arrow_back,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0 , right: 16, top: 16),
                          child: CircleAvatar

                            (
                            backgroundColor: Colors.grey.shade300,
                            radius: 20,
                            child: const Icon
                                  (
                                  Icons.star,
                                  color: Colors.white,
                                )),
                          ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 25,),
              const Text("About",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              ),
              const SizedBox(height: 15,),
              const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                maxLines: 3,
              ),
              const SizedBox(height: 20,),
              const Text("Gallery",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 7,),
              SizedBox(
                height: 80,
                width: 320,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context , index) {
                    return Images(index: index,);
                  },
                ),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    )
                  ),
                child: const Text(
                  "Book now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                  ),
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
