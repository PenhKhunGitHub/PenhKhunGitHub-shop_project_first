import 'package:flutter/material.dart';
import 'package:shop_project/view/detail/detail_category.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => CategoriesState();
}

class CategoriesState extends State<Categories> {
  List<String> list = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWM1CPSM3AIyX062xb9i4zOz31T49nCI4yGA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWM1CPSM3AIyX062xb9i4zOz31T49nCI4yGA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWM1CPSM3AIyX062xb9i4zOz31T49nCI4yGA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWM1CPSM3AIyX062xb9i4zOz31T49nCI4yGA&usqp=CAU",
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
                'CATEGORIES',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Scrollbar(
              child: SizedBox(
                  height: 220,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: list.length,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 3),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context)=> const CategoryDetail(),
                                      )
                                    );
                                  },
                                  child: SizedBox(
                                    width: 133,
                                    height: 210,
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 150,
                                          width: 133,
                                          decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(14),
                                          border: Border.all(color: Colors.grey.withOpacity(0.2)),
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 5,
                                                color: Colors.grey.withOpacity(0.5),
                                                spreadRadius: 0.2,
                                                offset: const Offset(2, 2)
                                            ),
                                          ],
                                          image: DecorationImage(
                                              //fit: BoxFit.cover,
                                              image: NetworkImage(list[index])
                                          )
                                        ),
                                      ),
                                      Padding(
                                      padding: const EdgeInsets.only(left: 2, top: 5,right: 2),
                                      child: Text(
                                        'Siang Pure Euw Balm',
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.7)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        )
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
