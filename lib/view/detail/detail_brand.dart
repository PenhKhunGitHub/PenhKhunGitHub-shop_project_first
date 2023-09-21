import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BrandDetail extends StatefulWidget {
  const BrandDetail({super.key});

  @override
  State<BrandDetail> createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<BrandDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
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
        body: Scrollbar(
          child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 13 / 19,
              children: List.generate(
                5,
                (index) => Padding(
                  padding:
                      const EdgeInsets.only(left: 4, right: 4, top: 15),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 8,
                              spreadRadius: 1,
                              color: Colors.black.withOpacity(0.5))
                        ]),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 180,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxTQAHA3FVxnifCFJEUYPBt-7Fi48nd1dQKg&usqp=CAU'))),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            'Ishitan Honey Lemon',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Center(
                          child: RatingBar.builder(
                            itemCount: 5,
                            itemSize: 15,
                            ignoreGestures: true,
                            itemPadding:
                                const EdgeInsets.only(right: 3),
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
                                padding: EdgeInsets.only(right: 5),
                                child: Text(
                                  '\$12',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(
                                          255, 78, 105, 127),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                '\$15',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(
                                        255, 185, 180, 180),
                                    fontWeight: FontWeight.bold,
                                    decoration:
                                        TextDecoration.lineThrough),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )),
        ),
        bottomNavigationBar: Container(
          height: 75,
          width: double.infinity,
          color: Colors.blue,
          child: Row(
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
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 25),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.white,
                    )),
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
                padding: const EdgeInsets.only(left: 10, bottom: 25, right: 25),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        ));
  }
}
