import 'dart:math';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({super.key});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  int currentIndex = 1;
  List itemSlider = [
    {'id': 1, 'image_path': 'images/anima.jpg'},
    {'id': 2, 'image_path': 'images/anima1.jpg'},
    {'id': 3, 'image_path': 'images/anima2.jpg'},
  ];
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Detail Product'),
          centerTitle: true,
          leadingWidth: 90,
          leading: const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                ),
              ),
              Text(
                'Back',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: badges.Badge(
                  position: badges.BadgePosition.topEnd(
                    top: -8,
                    end: -5,
                  ),
                  showBadge: true,
                  ignorePointer: false,
                  onTap: () {},
                  badgeContent: const Text(
                    '1',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  badgeStyle: badges.BadgeStyle(
                    badgeColor: Colors.blue,
                    padding: const EdgeInsets.all(5),
                    borderRadius: BorderRadius.circular(20),
                    elevation: 0,
                  ),
                  child: const Icon(
                    Icons.favorite,
                    size: 30,
                    color: Colors.white,
                  )),
            ),
            //Badges Shopping Card
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: badges.Badge(
                  position: badges.BadgePosition.topEnd(
                    top: -10,
                    end: -8,
                  ),
                  showBadge: true,
                  ignorePointer: false,
                  onTap: () {},
                  badgeContent: const Text(
                    '1',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  badgeStyle: badges.BadgeStyle(
                    badgeColor: Colors.blue,
                    padding: const EdgeInsets.all(5),
                    borderRadius: BorderRadius.circular(20),
                    elevation: 0,
                  ),
                  child: const Icon(
                    Icons.shopping_cart,
                    size: 30,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Sliable Product
              Stack(children: [
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
                    aspectRatio: 1.0,
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
                  bottom: 3,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: itemSlider.asMap().entries.map((item) {
                        return Container(
                          width: currentIndex == item.key ? 9 : 9,
                          height: 9,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 3, vertical: 4),
                          decoration: BoxDecoration(
                              color: currentIndex == item.key
                                  ? Colors.blue
                                  : Colors.grey,
                              borderRadius: BorderRadius.circular(50)),
                        );
                      }).toList()),
                )
              ]),
              //Name Product In Khmer
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Text(
                  'អ៊ីឈីតាន់​ ក្រុចឆ្មា',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              //Name Product In English
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Ichitan Honey Lemon(case)',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              //Star And Check
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: RatingBar.builder(
                        itemCount: 5,
                        itemSize: 20,
                        ignoreGestures: true,
                        itemPadding: const EdgeInsets.only(right: 5),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          //color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          //ignore: avoid_print
                          print(rating);
                        },
                      ),
                    ),
                    const Expanded(
                        flex: 1,
                        child: Text(
                          ' 0 Check it again',
                          style: TextStyle(fontSize: 18),
                        ))
                  ],
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 229, 223, 223),
                height: 5,
                thickness: 1,
                indent: 15,
              ),
              //Pirce Product
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  '\$ 3.89',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 229, 223, 223),
                height: 5,
                thickness: 1,
                indent: 15,
              ),
              //Quantity Product
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                              //color: Colors.black,
                              border: Border.all(color: Colors.black)),
                          child: const Center(
                            child: Text(
                              'បរិមាណ',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                              //color: Colors.black,
                              border: Border.all(color: Colors.black)),
                          child: const Center(
                            child: Text(
                              'តម្លៃ',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 2),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 40,
                          decoration: BoxDecoration(
                              //color: Colors.black,
                              border: Border.all(color: Colors.black)),
                          child: const Center(
                            child: Text(
                              '24+',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 70,
                          height: 40,
                          decoration: BoxDecoration(
                              //color: Colors.black,
                              border: Border.all(color: Colors.black)),
                          child: const Center(
                            child: Text(
                              '\$3.85',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Text(
                          'ចំនួនដែលកំពុងមាន',
                          style: TextStyle(fontSize: 18),
                        )),
                    Expanded(
                        flex: 1,
                        child: Text(
                          ' 92 in stock',
                          style: TextStyle(fontSize: 18),
                        ))
                  ],
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 229, 223, 223),
                height: 5,
                thickness: 1,
                indent: 15,
              ),
              //Pirce Product
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Row(
                  children: [
                    const Text(
                      'បរិមាណ',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(14)),
                        child: const TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '1',
                              hintStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: const [
                                BoxShadow(
                                    spreadRadius: 0.5,
                                    blurRadius: 5,
                                    color: Colors.grey,
                                    offset: Offset(1, 1)),
                                BoxShadow(
                                    blurRadius: 9,
                                    spreadRadius: 0.5,
                                    color: Colors.white,
                                    offset: Offset(-4, -4))
                              ]),
                          child: const Center(
                            child: Text(
                              '-',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.grey),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: const [
                                BoxShadow(
                                    spreadRadius: 0.5,
                                    blurRadius: 5,
                                    color: Colors.grey,
                                    offset: Offset(1, 1)),
                                BoxShadow(
                                    blurRadius: 9,
                                    spreadRadius: 0.5,
                                    color: Colors.white,
                                    offset: Offset(-4, -4))
                              ]),
                          child: const Center(
                            child: Text(
                              '+',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.grey),
                            ),
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 229, 223, 223),
                height: 5,
                thickness: 1,
                indent: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  'ការពិពណ៏នា',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text(
                  'អ៊ីឈីតាន់​ ក្រុចឆ្មា',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text(
                  'ក្រុមហ៊ុនផលិត',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 244, 233, 233),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: SizedBox(
                        height: 50,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 1,
                            itemBuilder: (context, index) => const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  child: Text(
                                    'werersafsagfdsfsfsfsf',
                                    style: TextStyle(fontSize: 23),
                                  ),
                                ))),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
        
        bottomNavigationBar: SizedBox(
          height: 174,
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 1,right: 1),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  //color: const Color.fromARGB(255, 244, 234, 234),
                  decoration: const BoxDecoration(
                    //color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5)
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 1),
                          child: Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 72, 70, 70),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                              )
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 25,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3),
                                  child: Text(
                                    'ដាក់ចូលបញ្ជីទិញ',
                                    style: TextStyle(fontSize: 18,color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 1),
                          child: Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 72, 70, 70),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10)
                              )
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 25,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3),
                                  child: Text(
                                    'ដាក់ចូលបញ្ជីទិញ',
                                    style: TextStyle(fontSize: 18,color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 45,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 244, 234, 234),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 18,
                        color: Colors.red,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text('ដាក់ចូលបញ្ជីទិញ'),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 75,
                width: double.infinity,
                color: Colors.blue,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25, bottom: 25),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.home,
                                size: 30,
                                color: Colors.white,
                              )
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 25),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.menu,
                                size: 30,
                                color: Colors.white,
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 25),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.adf_scanner_rounded,
                                size: 30,
                                color: Colors.white,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 25, right: 30),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.person,
                                size: 30,
                                color: Colors.white,
                              )
                            ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}