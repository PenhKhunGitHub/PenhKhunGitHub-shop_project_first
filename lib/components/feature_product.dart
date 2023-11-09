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
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWM1CPSM3AIyX062xb9i4zOz31T49nCI4yGA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWM1CPSM3AIyX062xb9i4zOz31T49nCI4yGA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWM1CPSM3AIyX062xb9i4zOz31T49nCI4yGA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWM1CPSM3AIyX062xb9i4zOz31T49nCI4yGA&usqp=CAU",
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
                                horizontal: 3, vertical: 5),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context)=> const ProductDetail())
                                );
                              },
                              child: Container(
                                width: 160,
                                height: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 2,
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 1,
                                        offset: const Offset(1, 1)
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Container(
                                        width: 150,
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
                                        'Siang Pure Euw Balm',
                                        textAlign: TextAlign.center,
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
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '\$11.90',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color.fromARGB(255, 76, 98, 115),
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: 10,),
                                          Text(
                                            '\$14.00',
                                            style: TextStyle(
                                                fontSize: 16,
                                                decoration: TextDecoration.lineThrough,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ],
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
