import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:shop_project/view/detail/shopping_cart.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 160, 202, 161),
        title: const Text(
          'Contact us',
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
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
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
                    Icons.shopping_cart,
                    size: 30,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Stack(children: [
                    TextFormField(
                      style: const TextStyle(fontSize: 18),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: 'Enter your name',
                        //label: Text('asdfs'),
                        labelStyle:
                            TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const Positioned(
                      left: 0,
                      right: 0,
                      bottom: 5,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 13),
                        child: Divider(
                          color: Color.fromARGB(255, 229, 223, 223),
                          height: 5,
                          thickness: 1,
                          //indent: 20,
                        ),
                      ),
                    )
                  ]),
                ],
              )),
          Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  Stack(children: [
                    TextFormField(
                      style: const TextStyle(fontSize: 18),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: 'Enter your email address',
                        //label: Text('asdfs'),
                        labelStyle:
                            TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const Positioned(
                      left: 0,
                      right: 0,
                      bottom: 5,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 13),
                        child: Divider(
                          color: Color.fromARGB(255, 229, 223, 223),
                          height: 5,
                          thickness: 1,
                          //indent: 20,
                        ),
                      ),
                    )
                  ]),
                ],
              )),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                children: [
                  Stack(children: [
                    TextFormField(
                      style: const TextStyle(fontSize: 18),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: 'Phone number',
                        //label: Text('asdfs'),
                        labelStyle:
                            TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const Positioned(
                      left: 0,
                      right: 0,
                      bottom: 5,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 13),
                        child: Divider(
                          color: Color.fromARGB(255, 229, 223, 223),
                          height: 5,
                          thickness: 1,
                          //indent: 20,
                        ),
                      ),
                    )
                  ]),
                ],
              )),
          Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  Stack(children: [
                    TextFormField(
                      style: const TextStyle(fontSize: 18),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: 'Enter subject',
                        //label: Text('asdfs'),
                        labelStyle:
                            TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const Positioned(
                      left: 0,
                      right: 0,
                      bottom: 5,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 13),
                        child: Divider(
                          color: Color.fromARGB(255, 229, 223, 223),
                          height: 5,
                          thickness: 1,
                          //indent: 20,
                        ),
                      ),
                    )
                  ]),
                ],
              )),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                children: [
                  Stack(children: [
                    TextFormField(
                      maxLines: 5,
                      style: const TextStyle(fontSize: 18),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: 'Enter your enquiry',
                        alignLabelWithHint: true,
                        //label: Text('asdfs'),
                        labelStyle:
                            TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    
                    const Positioned(
                      left: 0,
                      right: 0,
                      bottom: 5,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 13),
                        child: Divider(
                          color: Color.fromARGB(255, 229, 223, 223),
                          height: 5,
                          thickness: 1,
                          //indent: 20,
                        ),
                      ),
                    )
                  ]),
                ],
              )
            ),
        ],
      ),
    );
  }
}
