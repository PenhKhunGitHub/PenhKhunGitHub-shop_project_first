import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shop_project/view/detail/detail_product.dart';

class FeaturedProduct extends StatefulWidget {
  const FeaturedProduct({super.key});

  @override
  State<FeaturedProduct> createState() => FeatureProductState();
}

class FeatureProductState extends State<FeaturedProduct> {
  List<String> list = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxAWoBDK6F_m6XH4I9UyYWtO1BIJxTpJlGbA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxAWoBDK6F_m6XH4I9UyYWtO1BIJxTpJlGbA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxAWoBDK6F_m6XH4I9UyYWtO1BIJxTpJlGbA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxAWoBDK6F_m6XH4I9UyYWtO1BIJxTpJlGbA&usqp=CAU",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Scrollbar(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 5, top: 10),
              child: Row(
                children: [
                  Text(
                    'FEATURED PRODUCTS',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: SizedBox(
                  height: 260,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: list.length,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context)=> const DetailProduct())
                                );
                              },
                              child: Container(
                                width: 150,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 2,
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 1,
                                        offset: const Offset(1, 1)),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Container(
                                        width: 140,
                                        height: 130,
                                        decoration: BoxDecoration(
                                          borderRadius:const BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            topRight: Radius.circular(5)),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(list[index])
                                          )
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'ទំនិញ',
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Center(
                                      child: RatingBar.builder(
                                        ignoreGestures: true,
                                        itemCount: 5,
                                        itemSize: 14,
                                        //itemPadding: EdgeInsets.symmetric(),
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          // ignore: avoid_print
                                          print(rating);
                                        },
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        '\$ 12',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ))),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
