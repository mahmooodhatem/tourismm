import 'package:flutter/material.dart';

import 'Board Page.dart';
import 'screens/Board Page.dart';
class CustomRow extends StatelessWidget {
  const CustomRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 150,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.withOpacity(.4)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("images/photo_2023-03-22_12-44-45.jpg",
                fit: BoxFit.cover,
              ),
              const Padding(
                padding:  EdgeInsets.only(top: 8.0  , left: 16),
                child:  Text("Technical Squads",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(children: [
                    Icon(Icons.thumb_up_alt_outlined,
                      color: Colors.grey.withOpacity(.8),
                      size: 14,
                    ),
                    const Text(".",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                      ),
                    ),
                    Icon(Icons.chat_bubble_outline,
                      color: Colors.grey.withOpacity(.8),
                      size: 14,
                    ),
                    Expanded(
                      child: Text(" 0",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.withOpacity(.8),
                        ),
                      ),
                    ),
                    IconButton(onPressed: (){},
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.greenAccent.withOpacity(.9),
                          size: 16,
                        )
                    ),
                  ],),
                ),
              )
            ],
          ),
        ),
        const SizedBox(width: 5,),
        InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => BoardPage()));
          },
          child: Container(
            height: 150,
            width: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.withOpacity(.4)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("images/photo_2023-03-22_12-43-20.jpg",
                  fit: BoxFit.cover,
                ),
                const Padding(
                  padding:  EdgeInsets.only(top: 8.0  , left: 16),
                  child:  Text("Board",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(children: [
                      Icon(Icons.thumb_up_alt_outlined,
                        color: Colors.grey.withOpacity(.8),
                        size: 14,
                      ),
                      const Text(".",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),
                      ),
                      Icon(Icons.chat_bubble_outline,
                        color: Colors.grey.withOpacity(.8),
                        size: 14,
                      ),
                      Expanded(
                        child: Text(" 0",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.withOpacity(.8),
                          ),
                        ),
                      ),
                      IconButton(onPressed: (){},
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Colors.greenAccent.withOpacity(.9),
                            size: 16,
                          )
                      ),
                    ],),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
