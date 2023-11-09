import 'package:flutter/material.dart';
import 'package:shop_project/view/home/home_page_screen.dart';
import 'package:shop_project/view/account/account_screen.dart';
import 'package:shop_project/view/bottom_navigationbar/category_list.dart';
import 'package:shop_project/view/bottom_navigationbar/scan_barcode.dart';

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

  final List<Widget> pages = [
    const HomePageScreen(),
    const CategoryList() ,
    const ScanbarCodeScreen(),
    const AccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectItem],
      bottomNavigationBar: BottomNavigationBar(
          mouseCursor: MouseCursor.defer,
          onTap: navigationBotoomBar,
          currentIndex: selectItem,
          backgroundColor: const Color.fromARGB(255, 94, 151, 96),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          elevation: 0,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
            icon: Icon(Icons.home,color: selectItem==0 ?Colors.white:const Color.fromARGB(255, 193, 187, 187)),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_rounded,color: selectItem==1 ?Colors.white:const Color.fromARGB(255, 193, 187, 187)),
            label: '',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner_outlined,color: selectItem==2 ?Colors.white:const Color.fromARGB(255, 193, 187, 187)),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_rounded,color: selectItem==3 ?Colors.white:const Color.fromARGB(255, 193, 187, 187)),
            label: '',
          ),
        ],
      )
    );
  }
  
}