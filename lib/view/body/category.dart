import 'package:flutter/material.dart';
import 'package:shop_project/view/detail/detail_category.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _TypeProductScreenState();
}

class _TypeProductScreenState extends State<Categories> {
  List<String> list = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxAWoBDK6F_m6XH4I9UyYWtO1BIJxTpJlGbA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxAWoBDK6F_m6XH4I9UyYWtO1BIJxTpJlGbA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxAWoBDK6F_m6XH4I9UyYWtO1BIJxTpJlGbA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxAWoBDK6F_m6XH4I9UyYWtO1BIJxTpJlGbA&usqp=CAU",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 10),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                'ប្រភេទទំនិញ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3, top: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context)=> CategoryDetail()
                  )
                );
              },
              child: SizedBox(
                  height: 220,
                  //color: Colors.grey,
                  child: Scrollbar(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: list.length,
                        itemBuilder: (context, index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
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
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5, top: 5),
                                    child: SizedBox(
                                      height: 30,
                                      child: Text(
                                        'Khun',
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
