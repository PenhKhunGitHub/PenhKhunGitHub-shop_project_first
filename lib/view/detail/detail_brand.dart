import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shop_project/view/detail/detail_product.dart';
import 'package:shop_project/view/detail/shopping_cart.dart';

class BrandDetail extends StatefulWidget {
  const BrandDetail({super.key});

  @override
  State<BrandDetail> createState() => _BrandDetailState();
}

class _BrandDetailState extends State<BrandDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 160, 202, 161),
        title: const Text(
          'Brand Detail',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leadingWidth: 90,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              Text(
                'Back',
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ],
          ),
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
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ShoppingCartScreen()));
              },
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
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(35.0),
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(
                        height: 400,
                        width: double.infinity,
                        color: Colors.white,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: Text('Position',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              child: Text('Name: A to Z',
                                  style: TextStyle(fontSize: 18)),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              child: Text('Name: Z to A',
                                  style: TextStyle(fontSize: 18)),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              child: Text('Price: Low to High',
                                  style: TextStyle(fontSize: 18)),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: Text('Price: High to Low',
                                  style: TextStyle(fontSize: 18)),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              child: Text('Created on',
                                  style: TextStyle(fontSize: 18)),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              child: Text('Cancel',
                                  style: TextStyle(fontSize: 18)),
                            ),
                          ],
                        ),
                      ));
            },
            child: Container(
              height: 35,
              width: double.infinity,
              color: const Color.fromARGB(255, 118, 143, 162),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: Text(
                      'Sort by',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(Icons.filter_list_outlined)
                ],
              ),
            ),
          ),
        ),
      ),
      
      body: Scrollbar(
        child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 14 / 19,
            children: List.generate(
              6,
              (index) => Padding(
                padding: const EdgeInsets.only(left: 4, right: 4, top: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailProduct()
                        )
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              spreadRadius: 0,
                              blurRadius: 5,
                              color: Colors.grey,
                              offset: Offset(1, 2))
                        ]),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 160,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWM1CPSM3AIyX062xb9i4zOz31T49nCI4yGA&usqp=CAU",
                                  ))),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            'Ishitan Honey Lemon',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.clip,
                            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                          ),
                        ),
                        Center(
                          child: RatingBar.builder(
                            itemCount: 5,
                            itemSize: 15,
                            ignoreGestures: true,
                            itemPadding: const EdgeInsets.only(right: 3),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
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
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Text(
                                  '\$12.55',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 78, 105, 127),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),

                              Text(
                                '\$20.9',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 185, 180, 180),
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
