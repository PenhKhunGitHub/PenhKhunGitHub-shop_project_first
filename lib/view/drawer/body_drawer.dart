import 'package:flutter/material.dart';
import 'package:shop_project/view/drawer/about_screen.dart';
import 'package:shop_project/view/drawer/contact_screen.dart';
import 'package:shop_project/view/drawer/faq_screen.dart';
import 'package:shop_project/view/drawer/language_screen.dart';
import 'package:shop_project/view/drawer/privacy_policy_screen.dart';
import 'package:shop_project/view/drawer/vendor_screen.dart';
class BodyDrawer extends StatefulWidget {
  const BodyDrawer({super.key});

  @override
  State<BodyDrawer> createState() => _BodyDrawerState();
}

class _BodyDrawerState extends State<BodyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5,right: 5,left: 5),
      child: Column(
        children: [
          buildItem(1, 'Languages', Icons.language_outlined),
          buildItem(2, 'Privacy policy', Icons.lock),
          buildItem(3, 'About us', Icons.textsms_outlined),
          buildItem(4, 'Contact us', Icons.domain_sharp),
          buildItem(5, 'Vendor', Icons.supervised_user_circle),
          buildItem(6, 'FAQ', Icons.help_outline)
        ]
      ),
    );
  }

  int selectItem = 1;
  Widget buildItem(int id, String title, IconData icon) {
    return InkWell(
      onTap: () {
        if (id == 1) {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const LanguagesScreen()
            )
          );
        }
        else if(id == 2){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const PrivacyPolicyScreen()
            )
          );
        }
        else if(id == 3){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const AboutScreen()
            )
          );
        }
        else if(id == 4){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ContactScreen()
            )
          );
        }
        else if(id == 5){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const VendorScreen()
            )
          );
        }
        else if(id == 6){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const FAQScreen()
            )
          );
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
            child: Row(
              children: [
              Expanded(
                  flex: 1,
                  child: Icon(
                    icon,
                    size: 25,
                  )
              ),
              
              Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontSize: 18),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 18,
                      color: Color.fromARGB(255, 211, 208, 208),
                    ),
                  ],
                ),
              ),
            ]
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 222, 216, 216),
            height: 2,
            thickness: 1,
            indent: 60,
          ),
        ],
      ),
    );
  }
}
