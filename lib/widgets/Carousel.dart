import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';

final List<String> carouselimages = [
  "assets/images/image1.jpg",
  "assets/images/image2.jpg",
  "assets/images/image3.jpg",
  "assets/images/image4.jpg",
  "assets/images/image5.jpg",
];

class FoodSlideWidget extends StatefulWidget {
  @override
  _FoodSlideWidgetState createState() => _FoodSlideWidgetState();
}

class _FoodSlideWidgetState extends State<FoodSlideWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CarouselSlider.builder(
            itemCount: carouselimages.length,
            itemBuilder: (BuildContext context, int itemIndex) => Container(
              child: Image.asset(carouselimages[itemIndex],
                  fit: BoxFit.fill, width: double.infinity),
            ),
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              autoPlayInterval: Duration(seconds: 3),
            ),
          )
        ],
      ),
    );
  }
}
