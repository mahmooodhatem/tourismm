import 'package:flutter/material.dart';
import 'package:tourism/models/medel1.dart';
import 'package:tourism/screen3.dart';



class List extends StatefulWidget {
  final int index;
  final CountriesModel modell;

  const List({super.key, required this.index , required this.modell});

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              style: BorderStyle.none
            )
          ),
          onPressed: (){
            setState(() {
              Navigator.push(context, MaterialPageRoute(
                  builder: (_) => ThirdScreen(model[widget.index].photo)
              ));
            });
          },
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  height: 250,
                  width: 200,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    model[widget.index].photo
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(model[widget.index].city,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    const SizedBox(height: 10,),
                    Text(model[widget.index].country,
                      style: const TextStyle(
                          color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(width: 20,),
      ],
    );
  }
}
