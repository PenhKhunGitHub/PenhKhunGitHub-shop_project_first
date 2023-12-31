import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:shop_project/view/detail/detail_category.dart';
import 'package:shop_project/view/detail/shopping_cart.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        onGenerateRoute: (settings) {
          if (settings.name == '/CategoryDetail') {
            return MaterialPageRoute(
              builder: (context)=>const CategoryDetail()
            );
          }
          return MaterialPageRoute(builder: (context) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 160, 202, 161),
                title: const Text(
                  'Category',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                centerTitle: true,
                leadingWidth: 90,
                leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
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
                                builder: (context) =>
                                    const ShoppingCartScreen()));
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
              ),
              body: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const CategoryDetail()));
                          },
                          child: const SizedBox(
                            height: 60,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(top: 3, bottom: 3),
                                      child: Image(
                                          fit: BoxFit.contain,
                                          image: NetworkImage(
                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuiOSj0t5Vg1KCnXSmhrahJn_WJuuxRGraGA&usqp=CAU')),
                                    )),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      'Siang Pure Euw Balm',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const Divider(
                          color: Color.fromARGB(255, 229, 223, 223),
                          height: 5,
                          thickness: 1,
                          indent: 110,
                          //endIndent: 20,
                        )
                      ],
                    );
                  }),
            );
          });
        },
      ),
    );
  }
}
