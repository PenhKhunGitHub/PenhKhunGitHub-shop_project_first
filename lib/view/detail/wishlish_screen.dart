import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:shop_project/view/detail/shopping_cart.dart';
class WishlishScreen extends StatefulWidget {
  const WishlishScreen({super.key});

  @override
  State<WishlishScreen> createState() => _WishlishScreenState();
}


class _WishlishScreenState extends State<WishlishScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 160, 202, 161),
          title: const Text(
            'Wishlish',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
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
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>const ShoppingCartScreen())
                  );
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'The wishlish is empty!',
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
    );
  }
}