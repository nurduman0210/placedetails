import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_pro/carousel_pro.dart';




class MyFlexibleSpaceBar extends StatelessWidget{
const MyFlexibleSpaceBar();


Widget build(BuildContext build){

  return new SizedBox(
    //scrollDirection: Axis.horizontal,
    child: new Carousel(
      autoplay: false,
      boxFit: BoxFit.fill,
      images:
      [
      ExactAssetImage(
        'assets/images/karlag.jpg',
      ),
      ExactAssetImage(
        'assets/images/karlag2.jpg',
        
      ),
      ExactAssetImage(
        'assets/images/karlag3.jpg',
        
      ),
      ExactAssetImage(
        'assets/images/karlag.jpg',
        
      ),
    ]
    ),
  );
}


}