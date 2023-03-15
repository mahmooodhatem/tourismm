import 'package:flutter/material.dart';

class Images extends StatelessWidget {
  const Images({Key? key, required this.index}) : super(key: key);
final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            height: 75,
            width: 75,
            fit: BoxFit.cover,
            image: NetworkImage(
                "${images[index]}"
            ),
          ),
        ),
        const SizedBox(width: 5,)
      ],
    );
  }
}

List images = [
  "https://vid.alarabiya.net/images/2022/02/16/18ee9eea-fd74-42da-821d-c08fb5506278/18ee9eea-fd74-42da-821d-c08fb5506278_16x9_600x338.jpg",
  "https://i0.wp.com/alnigm.com/wp-content/uploads/2021/05/FB_IMG_1620587427793.jpg?resize=591%2C430&ssl=1",
  "https://www.sayidaty.net/sites/default/files/styles/900_scale/public/2021/01/23/7311306-195838556.jpg",
  "https://www.edarabia.com/ar/wp-content/uploads/2020/10/3-important-information-about-building-egyptian-pyramids.jpg",
  "https://www.emaratalyoum.com/polopoly_fs/1.1382357.1596479460!/image/image.jpg",
  "https://alamphoto.com/wp-content/uploads/2017/08/Egypt%20Pyramids%20Photos%20(15).jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTREoE__5JI_a4pyr_0Oe2wg1AuVnVxRLFMPA&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ97390qyZbX-nd0qMblVmt27vOefEwLrepqg&usqp=CAU",
];

