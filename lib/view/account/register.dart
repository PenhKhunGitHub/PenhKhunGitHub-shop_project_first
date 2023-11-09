import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:shop_project/view/detail/shopping_cart.dart';

// ignore: constant_identifier_names
enum ProductTypeEnum { Male, Female }

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  ProductTypeEnum? productTypeEnum;
  DateTime selectedDate = DateTime.now();
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 160, 202, 161),
        title: const Text(
          'Register',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
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
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ],
          ),
        ),
        actions: [
          //Badges Shopping Card
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=>const ShoppingCartScreen()));
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
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Text(
              'Your Personal Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Divider(
              color: Color.fromARGB(255, 229, 223, 223),
              height: 5,
              thickness: 1,
              //indent: 20,
            ),
          ),
          //First Name Text
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                        suffixIcon: Icon(Icons.person),
                        labelText: 'First name',
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
          //Last Name Text
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                        suffixIcon: Icon(Icons.person),
                        labelText: 'Last name',
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
          //Gender Radio
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Stack(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Gender',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 80,
                        //color: Colors.blue,
                        child: Stack(children: [
                          Row(
                            children: [
                              Radio<ProductTypeEnum>(
                                value: ProductTypeEnum.Male,
                                groupValue: productTypeEnum,
                                onChanged: (value) {
                                  setState(() {
                                    productTypeEnum = value;
                                  });
                                },
                              ),
                            ],
                          ),
                          Positioned(
                              top: 13,
                              right: 5,
                              child: Text(
                                ProductTypeEnum.Male.name,
                                style: const TextStyle(fontSize: 16),
                              ))
                        ]),
                      ),
                      SizedBox(
                        height: 50,
                        width: 100,
                        //color: Colors.amberAccent,
                        child: Stack(children: [
                          Row(
                            children: [
                              Radio<ProductTypeEnum>(
                                value: ProductTypeEnum.Female,
                                groupValue: productTypeEnum,
                                onChanged: (value) {
                                  setState(() {
                                    productTypeEnum = value;
                                  });
                                },
                              ),
                            ],
                          ),
                          Positioned(
                              top: 13,
                              right: 5,
                              child: Text(
                                ProductTypeEnum.Female.name,
                                style: const TextStyle(fontSize: 16),
                              ))
                        ]),
                      ),
                    ],
                  ),
                ),
              ]),
            ]),
          ),
          //Date Of Birth
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Stack(children: [
                    TextFormField(
                      controller: dateController,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        suffixIcon: Icon(Icons.date_range_outlined),
                        labelText: 'Date of birth',
                        labelStyle:
                            TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      readOnly: true,
                      onTap: () {
                        setState(() {
                          selectDate();
                        });
                      },
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
          //Phone Number
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Stack(children: [
                    TextFormField(
                      style: const TextStyle(fontSize: 18),
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        suffixIcon: Icon(Icons.phone_android_outlined),
                        labelText: 'Phone number',
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
          //Street address
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                        suffixIcon: Icon(Icons.location_on),
                        labelText: 'Street Address',
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Text(
              'Option',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Divider(
              color: Color.fromARGB(255, 229, 223, 223),
              height: 5,
              thickness: 1,
              //indent: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: RadioListTile(
              groupValue: null,
              value: 1,
              //splashRadius: 1,
              onChanged: (value) {},
              title: const Text('Newsletter'),
            ),
          )
        ]),
      ),
    );
  }

  void selectDate() async {
    DateTime pickedDate = await showModalBottomSheet(
        context: context,
        builder: (context) {
          DateTime? tempPickDate;
          return Container(
            height: 270,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Cancal',style: TextStyle(fontSize: 16),)),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(tempPickDate);
                        },
                        child: const Text('Done',style: TextStyle(fontSize: 16)))
                  ],
                ),
                Expanded(
                  child: CupertinoDatePicker(
                    backgroundColor: Colors.white,
                    initialDateTime:
                        DateTime.now().subtract(const Duration(days: 1)),
                    onDateTimeChanged: (DateTime dateTime) {
                      tempPickDate = dateTime;
                    },
                    use24hFormat: true,
                    mode: CupertinoDatePickerMode.date,
                  ),
                ),
              ],
            ),
          );
        });
    if (pickedDate != selectedDate) {
      setState(() {
        selectedDate == pickedDate;
        dateController.text = pickedDate.toString();
      });
    }
  }
}
