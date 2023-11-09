import 'package:flutter/material.dart';
import 'package:shop_project/view/detail/detail_brand.dart';

class Brands extends StatefulWidget {
  const Brands({super.key});

  @override
  State<Brands> createState() => BrandsState();
}

class BrandsState extends State<Brands> {
  List<String> list = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWM1CPSM3AIyX062xb9i4zOz31T49nCI4yGA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWM1CPSM3AIyX062xb9i4zOz31T49nCI4yGA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWM1CPSM3AIyX062xb9i4zOz31T49nCI4yGA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWM1CPSM3AIyX062xb9i4zOz31T49nCI4yGA&usqp=CAU",
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
            child: SizedBox(
                height: 170,
                //color: Colors.grey,
                child: Scrollbar(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: list.length,
                      itemBuilder: (context, index) => Padding(
                        padding:const EdgeInsets.symmetric(horizontal: 5,),
                        child: Column(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context)=> const BrandDetail())
                                    );
                                  },
                                  child: Container(
                                    width: 127,
                                    height: 150,
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
                                        image: NetworkImage(list[index])
                                  )
                                                              ),
                                                            ),
                                ),
                            SizedBox(height: 15,)
                          ],
                        ),
                      )
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }
}
