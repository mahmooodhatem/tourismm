import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_drawer/customer_drawer.dart';
import 'package:my_drawer/drawer.dart';

class FeedBack extends StatelessWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        systemOverlayStyle:const SystemUiOverlayStyle(
          statusBarColor: Colors.white
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
            child: (
            Column(
              children:  [
               const Image(
                  height: 400,
                  width: 350,
                  fit : BoxFit.cover,
                    image: NetworkImage(
                  "https://img.freepik.com/premium-vector/illustration-procrastination-time-work-cartoon_81534-1770.jpg?w=740"
                )),

               const  Text("Your FeedBack",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                ),
                const SizedBox(height: 10,),
                Text("Give your best time for this moment.",
                  style: TextStyle(
                    color: Colors.black.withOpacity(.7),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.5),
                        blurRadius: 50,
                        spreadRadius: 1
                      )
                    ]
                  ),
                  height: 120,
                  width: double.infinity,
                  child: TextFormField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your feedback...",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(.4),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.black.withOpacity(.2)
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(onPressed: (){}, child:
                  const Text("Send",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  )
                  ),
                )
              ],
            )
            ),
          ),
        ),
      ),
      drawer: const CustomerDrawer(),
    );
  }
}
