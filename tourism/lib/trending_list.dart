import 'package:flutter/material.dart';
import 'package:tourism/models/model2.dart';
import 'package:tourism/screen3.dart';



class Trend extends StatefulWidget {
  final int index2;
  final Trending model2;

  const Trend({super.key, required this.index2 , required this.model2});

  @override
  State<Trend> createState() => _TrendState();
}

class _TrendState extends State<Trend> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.shade100,
          ),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                side: BorderSide(
                    style: BorderStyle.none
                )
            ),
            onPressed: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(
                    builder: (_) =>  ThirdScreen(trend[widget.index2].photo)
                ));
              });
            },
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    height: 75,
                    width: 75,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        trend[widget.index2].photo
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(trend[widget.index2].city,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Text(trend[widget.index2].country,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10,),
      ],
    );
  }
}