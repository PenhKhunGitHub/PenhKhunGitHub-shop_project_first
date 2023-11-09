import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:shop_project/view/detail/shopping_cart.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 160, 202, 161),
        title: const Text(
          'Search',
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
                    Icons.shopping_cart,
                    size: 30,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(90.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SearchScreen()));
                  },
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding:
                            const EdgeInsets.only(top: 3, bottom: 3),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide.none),
                        hintText: 'Search',
                        hintStyle: const TextStyle(fontSize: 20),
                        prefixIcon: const Icon(
                          Icons.search_outlined,
                          size: 30,
                          color: Color.fromARGB(255, 120, 118, 118),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3, bottom: 3),
                child: InkWell(
                  onTap: () {
                    buildAdvancedSearch();
                  },
                  child: Container(
                    height: 30,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ADVANCED SEARCH',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future buildAdvancedSearch() {
    return showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return CupertinoPopupSurface(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 160, 202, 161),
              title: const Text(
                'Advanced search',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              leading: const Text(''),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.white)),
                      child: const Text('x',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ),
                )
              ],
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    showCupertinoModalPopup(
                        context: context,
                        builder: (context) => CupertinoActionSheet(
                              actions: [
                                CupertinoActionSheetAction(
                                  onPressed: () {},
                                  child: const Text('All'),
                                ),
                                CupertinoActionSheetAction(
                                  onPressed: () {},
                                  child: const Text('Siang Pure Euw Balm'),
                                ),
                                CupertinoActionSheetAction(
                                  onPressed: () {},
                                  child: const Text('Twin Lotus Toothpaste'),
                                ),
                                CupertinoActionSheetAction(
                                  onPressed: () {},
                                  child: const Text('Carabao Energy Drink'),
                                ),
                                CupertinoActionSheetAction(
                                  onPressed: () {},
                                  child: const Text('Ichitan Green Tea'),
                                ),
                                CupertinoActionSheetAction(
                                  onPressed: () {},
                                  child: const Text('Kim Hout Birth Nest'),
                                ),
                                CupertinoActionSheetAction(
                                  onPressed: () {},
                                  child: const Text('Sea Crown Fish'),
                                ),
                              ],
                              cancelButton: CupertinoActionSheetAction(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Cancel')),
                            )
                        );
                  },
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Text(
                            'Category',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                            color: Color.fromARGB(255, 211, 208, 208),
                          ),
                        ),
                      ]),
                ),
                const Divider(
                  color: Colors.grey,
                  height: 2,
                  thickness: 1,
                  indent: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: RadioListTile(
                    value: 2,
                    groupValue: 2,
                    onChanged: (value) {},
                    contentPadding: const EdgeInsets.only(left: 3),
                    title: const Text(
                      'Automotically search sub categories',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  height: 2,
                  thickness: 1,
                  indent: 60,
                ),
                InkWell(
                  onTap: () {
                    showCupertinoModalPopup(
                        context: context,
                        builder: (context) => CupertinoActionSheet(
                              actions: [
                                CupertinoActionSheetAction(
                                  onPressed: () {},
                                  child: const Text('All'),
                                ),
                                CupertinoActionSheetAction(
                                  onPressed: () {},
                                  child: const Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text('PATAVA FOOD INDUSTRIES'),
                                      Text('(VIETNAM) LIMITED'),
                                    ],
                                  ),
                                ),
                                CupertinoActionSheetAction(
                                  onPressed: () {},
                                  child: const Text('Siang Pure Euw Balm and Oil'),
                                ),
                                CupertinoActionSheetAction(
                                  onPressed: () {},
                                  child: const Text('Carabao Tawandang co.ltd'),
                                ),
                                CupertinoActionSheetAction(
                                  onPressed: () {},
                                  child: const Text('Ichitan group public co Ltd'),
                                ),
                                CupertinoActionSheetAction(
                                  onPressed: () {},
                                  child: const Text('Kim Hout'),
                                ),
                                CupertinoActionSheetAction(
                                  onPressed: () {},
                                  child: const Text('A&H International Co Ltd'),
                                ),
                              ],
                              cancelButton: CupertinoActionSheetAction(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Cancel')
                              ),
                            )
                        );
                  },   
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Text(
                            'Brand',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                            color: Color.fromARGB(255, 211, 208, 208),
                          ),
                        ),
                      ]),
                ),
                const Divider(
                  color: Colors.grey,
                  height: 2,
                  thickness: 1,
                  indent: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: RadioListTile(
                    value: 2,
                    groupValue: 2,
                    onChanged: (value) {},
                    contentPadding: const EdgeInsets.only(left: 3),
                    title: const Text(
                      'Search In product decriptions',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  height: 2,
                  thickness: 1,
                  indent: 60,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 160, 202, 161),
                        borderRadius: BorderRadius.circular(40)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'SEARCH',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
