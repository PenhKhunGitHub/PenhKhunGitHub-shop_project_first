import 'package:flutter/material.dart';
import 'package:shop_project/view/body/home_page_screen.dart';
import 'package:shop_project/view/detail/account_screen.dart';
import 'package:shop_project/view/detail/category_list.dart';
import 'package:shop_project/view/detail/scan_barcode.dart';
import 'package:shop_project/view/drawer/contact_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectItem = 0;

  void navigationBotoomBar(int index) {
    setState(() {
      selectItem = index;
    });
  }

  final List<Widget> pages = [const HomePageScreen(),const CategoryList() ,const ScanbarCodeScreen(),const AccountScreen()];
  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: pages[selectItem]),
        bottomNavigationBar: BottomNavigationBar(
          mouseCursor: MouseCursor.defer,
          onTap: navigationBotoomBar,
          currentIndex: selectItem,
          backgroundColor: const Color.fromARGB(255, 94, 151, 96),
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 0,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
            icon: Icon(Icons.home,color: selectItem==0 ?Colors.white:const Color.fromARGB(255, 193, 187, 187)),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu,color: selectItem==1 ?Colors.white:const Color.fromARGB(255, 193, 187, 187)),
            label: '',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.adf_scanner_rounded,color: selectItem==2 ?Colors.white:const Color.fromARGB(255, 193, 187, 187)),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: selectItem==3 ?Colors.white:const Color.fromARGB(255, 193, 187, 187)),
            label: '',
          ),
        ],
      )
    );
  }
  
}