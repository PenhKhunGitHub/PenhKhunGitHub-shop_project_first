import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class ScanbarCodeScreen extends StatefulWidget {
  const ScanbarCodeScreen({super.key});

  @override
  State<ScanbarCodeScreen> createState() => _ScanbarCodeScreenState();
}

class _ScanbarCodeScreenState extends State<ScanbarCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 160, 202, 161),
        title: const Text('Scan BarCode',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
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
                style: TextStyle(fontSize: 20,color: Colors.white),
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
        ],
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 815,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQza-uZpZWa0FmGGllEEs1SMWyw_1PTizHLdQ&usqp=CAU'
                    )
                  )
                ),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return const Column(
                        children: [
                          SizedBox(height: 220,),
                          SizedBox(
                            height: 350,
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.only(top: 3, bottom: 3),
                              child: Image(
                                  fit: BoxFit.contain,
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAfm8M8Efgh5lJ09nqaL56T12RbQor7OZwmw&usqp=CAU')),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}