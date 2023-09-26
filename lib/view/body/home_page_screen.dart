import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:shop_project/view/body/bestsellers.dart';
import 'package:shop_project/view/body/brands.dart';
import 'package:shop_project/view/body/sliable.dart';
import 'package:shop_project/view/body/feature_product.dart';
import 'package:shop_project/view/body/category.dart';
import 'package:shop_project/view/drawer/body_drawer.dart';
import 'package:shop_project/view/drawer/header_drawer.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});
  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //const Color(0xFFEDECF2),
      drawer: const Drawer(
        backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [HeaderDrawer(), BodyDrawer()],
          ),
        ),
      ),
      appBar: AppBar(
        //Backgound App Bar
        backgroundColor: const Color.fromARGB(255, 160, 202, 161),
        // Title Image App Bar
        title: const Text(
          'Shop App',
          style: TextStyle(color: Colors.purple),
        ),
        centerTitle: true,
        // Button Setting
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.settings_outlined,
                  size: 30,
                  color: Colors.white,
                ))),
        //Badges Favorite & Shopping card
        actions: [
          //Badges Favorite
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
                  Icons.shopping_cart_rounded,
                  size: 30,
                  color: Colors.white,
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Text Formfile Search
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: SizedBox(
                height: 60,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14)),
                      hintText: 'Search...',
                      prefixIcon: const Icon(
                        Icons.search_outlined,
                        size: 30,
                      )),
                ),
              ),
            ),
            //Sliable Images
            const SliableScreen(),
            //Category
            const Categories(),
            //Brands Product
            const Brands(),
            //Feature Products
            const FeaturedProduct(),
            // BestSellers
            const BestSellers()
          ],
        ),
      ),
    );
  }

  // int selectIndex = 1;
  // Widget home(int id) {
  //   return Padding(
  //     padding: const EdgeInsets.only(left: 25, bottom: 25),
  //     child: IconButton(
  //         onPressed: () {
  //           if (id == 1) {
  //             const HomePageScreen();
  //           }
  //           setState(() {
  //             selectIndex = id;
  //           });
  //         },
  //         icon: Icon(
  //           Icons.home,
  //           size: 30,
  //           color: selectIndex == id ?Color.fromARGB(255, 171, 167, 167):Colors.white,
  //         )),
  //   );
  // }

  // Widget list(int id) {
  //   return Padding(
  //     padding: const EdgeInsets.only(left: 10, bottom: 25),
  //     child: IconButton(
  //         onPressed: () {
  //           if (id == 2) {
  //             Navigator.of(context).push(MaterialPageRoute(
  //                 builder: (context) => const CategoryTypeProducts()));
  //           }
  //           setState(() {
  //             selectIndex = id;
  //           });
  //         },
  //         icon: Icon(
  //           Icons.list_outlined,
  //           size: 30,
  //           color: selectIndex == id ?Color.fromARGB(255, 171, 167, 167):Colors.white,
  //         )),
  //   );
  // }

  // Widget scanner(int id) {
  //   return Padding(
  //     padding: const EdgeInsets.only(left: 10, bottom: 25),
  //     child: IconButton(
  //         onPressed: () {
  //           if (id == 3) {
  //             Navigator.of(context).push(MaterialPageRoute(
  //                 builder: (context) => const CategoryTypeProducts()));
  //           }
  //           setState(() {
  //             selectIndex = id;
  //           });
  //         },
  //         icon: Icon(
  //           Icons.adf_scanner_rounded,
  //           size: 30,
  //           color: selectIndex == id ?Color.fromARGB(255, 171, 167, 167):Colors.white,
  //         )),
  //   );
  // }

  // Widget person(int id) {
  //   return Padding(
  //     padding: const EdgeInsets.only(left: 10, bottom: 25, right: 25),
  //     child: IconButton(
  //         onPressed: () {
  //           if (id == 4) {
  //             Navigator.of(context).push(MaterialPageRoute(
  //                 builder: (context) => const AccountScreen()));
  //           }
  //           setState(() {
  //             selectIndex = id;
  //           });
  //         },
  //         icon: Icon(
  //           Icons.person,
  //           size: 30,
  //           color: selectIndex == id ?Color.fromARGB(255, 171, 167, 167):Colors.white,
  //         )),
  //   );
  // }
}
