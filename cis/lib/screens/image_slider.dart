import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

int? currentIndex;

class ImageSliderPage extends StatefulWidget {
  const ImageSliderPage({super.key});

  @override
  State<ImageSliderPage> createState() => _ImageSliderPageState();
}

class _ImageSliderPageState extends State<ImageSliderPage> {
  List imageList = [

    'images/photo_2023-03-22_12-43-22.jpg',
    'images/photo_2023-03-22_12-43-23.jpg',
    'images/photo_2023-03-22_13-34-02.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemBuilder: (BuildContext context, index, realIndex) {
            return SizedBox(
              width: double.infinity,
              child: Image.asset(
                "${imageList[index]}",
                fit: BoxFit.fill,
              ),
            );
          },
          itemCount: imageList.length,
          options: CarouselOptions(
              autoPlay: true,
              viewportFraction: 1,
              enlargeCenterPage: true,
              autoPlayInterval: const Duration(seconds: 3),
              height: 200,
              onPageChanged: ((index, reason) {
                setState(() {
                  currentIndex = index;
                });
              })),
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: slideContainer(0)),
            Expanded(child: slideContainer(1)),
            Expanded(child: slideContainer(2)),
          ],
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
}

Container slideContainer(index) {
  return Container(
    height: 20,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: currentIndex == index ? Colors.green : Colors.grey,
    ),
    margin: const EdgeInsets.all(8),
  );
}
