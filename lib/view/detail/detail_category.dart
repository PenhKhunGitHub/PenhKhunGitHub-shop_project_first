
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CategoryDetail extends StatefulWidget {
  const CategoryDetail({super.key});

  @override
  State<CategoryDetail> createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 160, 202, 161),
        title: const Text(
          'Category Detail',
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
        child: SingleChildScrollView(
          child: Column(
          children: [
         const SizedBox(
                height: 400,
                width: double.infinity,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxTQAHA3FVxnifCFJEUYPBt-7Fi48nd1dQKg&usqp=CAU'
                  )
                ),
             ),
            SizedBox(
                height: 900,
                width: double.infinity,
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 13/19,
                  physics: const PageScrollPhysics(parent: NeverScrollableScrollPhysics()),
                  children: List.generate(
                    5, 
                    (index) => Padding(
                    padding: const EdgeInsets.only(left: 4,right: 4,top: 15),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                spreadRadius: 0,
                                blurRadius: 8,
                                color: Colors.grey,
                                offset: Offset(1, 2)
                            )
                          ]
                        ),
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
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxTQAHA3FVxnifCFJEUYPBt-7Fi48nd1dQKg&usqp=CAU'
                                    )
                                  )
                                ),  
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                'Ishitan Honey Lemon',
                                style: TextStyle(
                                  fontSize: 18
                                ),
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
                                    padding: EdgeInsets.only(right: 5),
                                    child: Text(
                                      '\$12',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 78, 105, 127),
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '\$15',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 185, 180, 180),
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.lineThrough
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        ),
                      ),
                    )
                  ),
                )
              ],
            ),
        ),
      ),
    );
  }
}