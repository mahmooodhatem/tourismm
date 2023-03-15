import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourism/trending_list.dart';
import 'cities_list.dart';
import 'models/medel1.dart';
import 'models/model2.dart';


class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.white),
        backgroundColor: Colors.white,
        elevation: 0,
        leading:
        const Padding(
          padding: EdgeInsets.only(left: 32.0),
          child: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: ClipOval(
              child: Image(image: NetworkImage(
                "https://pub-static.fotor.com/assets/projects/pages/ed2f505cd64d46ffbb43c2b4d65cfaf3/300w/fotor-5965bfe16a014c9f81a074bbe55a0244.jpg"
              ),),
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child:
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 25,),
                const Text("Where do you \n want to go?",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40,),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                       hintText: "Search...",
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      prefixIcon: Icon(Icons.search_rounded),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Row(
                  children: [
                    const Expanded(
                      child: Text("Recommended",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                    Icon(Icons.more_horiz,
                    color: Colors.grey.shade400,
                    )
                  ],
                ),
                const SizedBox(height: 15,),
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: model.length,
                    itemBuilder: (context , index) {
                      return List(index : index , modell : model[index]);
                    },
                  ),
                ),
                const SizedBox(height: 15,),
                Row(
                  children: [
                    const Expanded(
                      child: Text("Trending this month",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Icon(Icons.more_horiz,
                      color: Colors.grey.shade400,
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                SizedBox(
                  height: 85,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: model.length,
                    itemBuilder: (context , index) {
                      return Trend(index2 : index , model2 : trend[index]);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
