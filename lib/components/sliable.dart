import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliableScreen extends StatefulWidget {
  const SliableScreen({super.key});

  @override
  State<SliableScreen> createState() => _SliableScreenState();
}

class _SliableScreenState extends State<SliableScreen> {
  int currentIndex = 1;
  List itemSlider = [
    {'id': 1, 'image_path': 'images/anima.jpg'},
    {'id': 2, 'image_path': 'images/anima1.jpg'},
    {'id': 3, 'image_path': 'images/anima2.jpg'},
  ];
  CarouselController carouselController = CarouselController();


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      CarouselSlider(
        items: itemSlider
            .map((item) => Image.asset(
              item['image_path'],
              fit: BoxFit.cover,
              width: double.infinity,
            ))
            .toList(),
        carouselController: carouselController,
        options: CarouselOptions(
          scrollPhysics: const BouncingScrollPhysics(),
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 1,
          aspectRatio:1.0,
          initialPage: 2,
          onPageChanged: (index, reason) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
      Positioned(
        left: 0,
        right: 0,
        bottom: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: itemSlider.asMap().entries.map((item) {
            return Container(
              width: currentIndex == item.key ? 7: 7,
              height: 7,
              margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 4),
              decoration: BoxDecoration(
                color: currentIndex == item.key 
                        ? Colors.blue
                        : Colors.grey,
                borderRadius: BorderRadius.circular(50)
              ),
          );
        }).toList()),
      )
    ]);
  }
}