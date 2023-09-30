import 'package:flutter/material.dart';
import 'package:shop_project/view/detail/detail_brand.dart';

class Brands extends StatefulWidget {
  const Brands({super.key});

  @override
  State<Brands> createState() => BrandsState();
}

class BrandsState extends State<Brands> {
  List<String> list = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxAWoBDK6F_m6XH4I9UyYWtO1BIJxTpJlGbA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxAWoBDK6F_m6XH4I9UyYWtO1BIJxTpJlGbA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxAWoBDK6F_m6XH4I9UyYWtO1BIJxTpJlGbA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxAWoBDK6F_m6XH4I9UyYWtO1BIJxTpJlGbA&usqp=CAU",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 5, top: 10),
            child: Row(
              children: [
                Text(
                  'BRANDS',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3, top: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> const BrandDetail())
                );
              },
              child: SizedBox(
                  height: 170,
                  //color: Colors.grey,
                  child: Scrollbar(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: list.length,
                        itemBuilder: (context, index) => Padding(
                          padding:const EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  Container(
                                    width: 127,
                                    height: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(14),
                                        boxShadow: const [
                                          BoxShadow(
                                              blurRadius: 0,
                                              color: Colors.grey,
                                              spreadRadius: 1,
                                              offset: Offset(0, 0))
                                        ],
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(list[index]))),
                                  ),
                                  SizedBox(height: 15,)
                                ],
                          ),
                        )
                    ),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
