import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 80,
                width:80,
                decoration:const  BoxDecoration(
                image: DecorationImage(image: AssetImage("image/hm1.jpeg"),fit: BoxFit.cover)
              ),

              ),
              Container(
                height: 80,
                width:80,
                 decoration:const  BoxDecoration(
                image: DecorationImage(image: AssetImage("image/hm4.jpeg"),fit: BoxFit.cover)
              ),

              ),
             Container(
                height: 80,
                width:80,
                 decoration:const  BoxDecoration(
                image: DecorationImage(image: AssetImage("image/hm3.jpg"),fit: BoxFit.cover)
              ),

              ),
             Container(
                height: 80,
                width:80,
                decoration:const  BoxDecoration(
                image: DecorationImage(image: AssetImage("image/hm2.jpeg"),fit: BoxFit.cover)
              ),

              ),
            ],
           );
  }
}