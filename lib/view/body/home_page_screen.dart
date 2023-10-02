import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:shop_project/view/body/bestsellers.dart';
import 'package:shop_project/view/body/brands.dart';
import 'package:shop_project/view/body/sliable.dart';
import 'package:shop_project/view/body/feature_product.dart';
import 'package:shop_project/view/body/category.dart';
import 'package:shop_project/view/detail/search_screen.dart';
import 'package:shop_project/view/detail/shopping_cart.dart';
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
      backgroundColor: const Color.fromARGB(255, 223, 220, 220).withOpacity(0.2), //const Color(0xFFEDECF2),
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
          style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),
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
                    Icons.shopping_cart_rounded,
                    size: 30,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
            child: TextFormField(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>const SearchScreen())
                );
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: const EdgeInsets.all(8.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none
                  ),
                  hintText: 'Search...',
                  hintStyle: const TextStyle(fontSize: 20),
                  prefixIcon: const Icon(
                    Icons.search_outlined,
                    size: 30,
                    color: Color.fromARGB(255, 120, 118, 118),
                  )
                ),
            ),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            //Sliable Images
            SliableScreen(),
            //Category
            Categories(),
            //Brands Product
            Brands(),
            //Feature Products
            FeaturedProduct(),
            // BestSellers
            BestSellers()
          ],
        ),
      ),
    );
  }
}
