import 'package:flutter/material.dart';
import 'package:shop_project/view/detail/login.dart';
import 'package:badges/badges.dart' as badges;
import 'package:shop_project/view/detail/shopping_cart.dart';
import 'package:shop_project/view/detail/wishlish_screen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _BodyDrawerState();
}

class _BodyDrawerState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 160, 202, 161),
        title: const Text(
          'Account',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leadingWidth: 90,
        leading: GestureDetector(
          onTap: () {},
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
      body: Padding(
        padding: const EdgeInsets.only(top: 5, right: 5, left: 5),
        child: Column(children: [
          buildItem(1, 'Account info', Icons.person_outline_rounded),
          buildItem(2, 'Addresses', Icons.house_outlined),
          buildItem(3, 'Wishlist', Icons.favorite_outline),
          buildItem(4, 'Orders', Icons.shop),
          buildItem(5, 'Return Requests', Icons.supervised_user_circle),
          buildItem(6, 'Shopping Cart', Icons.shopping_cart_outlined),
          buildItem(7, 'My product reviews', Icons.article_outlined),
          buildItem(8, 'Log in', Icons.login_rounded)
        ]),
      ),
    );
  }

  int selectItem = 1;
  Widget buildItem(int id, String title, IconData icon) {
    return InkWell(
      onTap: () {
        if (id == 1) {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const LoginScreen()));
        } else if (id == 2) {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const LoginScreen()));
        } else if (id == 3) {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const WishlishScreen()));
        } else if (id == 4) {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const LoginScreen()));
        } else if (id == 5) {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const LoginScreen()));
        } else if (id == 6) {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const LoginScreen()));
        } else if (id == 7) {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const LoginScreen()));
        } else if (id == 8) {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const LoginScreen()));
        }
        setState(() {
          selectItem = id;
        });
      },
      child: Column(
        children: [
          SizedBox(
            height: 50,
            width: double.infinity,
            child: Row(children: [
              Expanded(
                  flex: 1,
                  child: Icon(
                    icon,
                    size: 33,
                  )),
              Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontSize: 18),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20,
                        color: Color.fromARGB(255, 211, 208, 208),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          const Divider(
            color: Color.fromARGB(255, 222, 216, 216),
            height: 2,
            thickness: 1,
            indent: 80,
          ),
        ],
      ),
    );
  }
}
