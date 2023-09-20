import 'package:flutter/material.dart';

class BodyDrawer extends StatefulWidget {
  const BodyDrawer({super.key});

  @override
  State<BodyDrawer> createState() => _BodyDrawerState();
}

class _BodyDrawerState extends State<BodyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildItem(1,'Languages',Icons.language_outlined),
        buildItem(2,'Privacy policy',Icons.lock),
        buildItem(3,'About us',Icons.textsms_outlined),
        buildItem(4,'Contact us',Icons.domain_sharp),
        buildItem(5,'Vendor',Icons.supervised_user_circle),
        buildItem(6,'FAQ',Icons.help_outline)
      ]
    );
  }

  Widget buildItem(int id,String title,IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,right: 10),
      child: Column(
        children: [
          Row(
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
                      style: const TextStyle(fontSize: 20),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                      color: Color.fromARGB(255, 211, 208, 208),
                    ),
                  ],
                ),
              ),
            ]
          ),
          const SizedBox(height: 10),
          const Divider(
            color: Color.fromARGB(255, 229, 223, 223),
            height: 5,
            thickness: 1,
            indent: 60,
          ),
        ],
      ),
    );

  }
}
