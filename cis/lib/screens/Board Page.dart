import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

class BoardPage extends StatefulWidget {

  @override
  State<BoardPage> createState() => _BoardPageState();
}

class _BoardPageState extends State<BoardPage> {
  @override

  var nameCtrl = TextEditingController();

  var messageCtrl = TextEditingController();

  final GlobalKey<FormState> form1key = GlobalKey();

  final GlobalKey<FormState> form2key = GlobalKey();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.white38,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/photo_2023-03-22_12-43-20.jpg",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Board 2023",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.emoji_emotions_sharp,
                    color: Colors.greenAccent.withOpacity(.9),
                    size: 15,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "CIS Team.2022-11-26 03:41:24.",
                    style: TextStyle(
                      color: Colors.white60,
                    ),
                  ),
                  const Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.white60,
                    size: 14,
                  ),
                  const Text(
                    " 0",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "مش قادر اكتب الكلام دا كله الصراحة, فأنا هعمل كدهو ............................................................................................................................................................................................................................................................................................................................................................ ",
                textAlign: TextAlign.end,
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade600,

                ),
                child: Form(
                  key: form1key,
                  child: TextFormField(
                    validator: (value){
                      if (value!.isEmpty) {
                        return "Please enter a valid name";
                      }
                      return null;
                    } ,
                    keyboardType: TextInputType.name,
                    controller: nameCtrl,
                    decoration: InputDecoration(
                      hintMaxLines: 1,
                        border: InputBorder.none,
                        hintText: "Your Name",
                        hintStyle: const TextStyle(
                          color: Colors.white38,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade600),
                child: Form(
                  key: form2key,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    validator: (value){
                      if (value!.isEmpty) {
                        return "Message is required";
                      }
                      return null;
                    } ,
                    controller: messageCtrl,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Write a comment",
                        hintStyle: const TextStyle(
                          color: Colors.white38,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none)),
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "0/255",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 45,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.greenAccent.withOpacity(.9),
                    gradient: const LinearGradient(
                       colors: [
                         Colors.tealAccent,
                         Colors.green,
                         Colors.teal,
                       ]
                    )
                  ),
                  child: OutlinedButton(
                    onPressed: (){
                       setState(() {
                         if ( form1key.currentState!.validate() && form2key.currentState!.validate() ) {
                            showToast(
                             "Sent successfully",
                             context: context,
                             backgroundColor: Colors.teal,
                             textStyle: const TextStyle(
                               color: Colors.white,
                             )
                           );
                         }
                       });
                    },
                    child: const Text(
                      "SEND",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
