import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_project/view/detail/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color.fromARGB(255, 160, 202, 161),
        title: const Text('Login',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
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
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdEHFu8_3Kf7V-rFmJrr9KdzY_cg4zsd4LKg&usqp=CAU'))),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(height: 100),
            Container(
              height: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQISz5V5d0HIvveamz-uKISjtVg60EriRq05xE34m2cLg&s'))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 1,
                          color: Colors.grey,
                          spreadRadius: 0,
                          offset: Offset(0, 0))
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          buildMobilePhoneVerify();
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: 40,
                                child: Icon(
                                  Icons.phone_android_rounded,
                                  color: Colors.white,
                                ),
                              ),
                              Expanded(
                                  flex: 4,
                                  child: Text(
                                    'MOBILE NUMBER VERIFICATION',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const RegisterScreen()));
                      },
                      icon: const Icon(
                        Icons.person_add_sharp,
                        size: 35,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                'New Customer',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 50,
            )
          ]),
        ),
      ),
    );
  }

  Future buildMobilePhoneVerify() {
    return showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return CupertinoPopupSurface(
          child: Container(
            height: 800,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(14),
                    topRight: Radius.circular(14))),
            child: Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 124, 158, 125),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14),
                              topRight: Radius.circular(14))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 50,
                              width: 390,
                              child: Padding(
                                padding: EdgeInsets.only(top: 12),
                                child: Text(
                                  'Mobile Phone Number Verify...',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
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
                            )
                          ]),
                    ),
                    Container(
                      height: 750,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQISz5V5d0HIvveamz-uKISjtVg60EriRq05xE34m2cLg&s'))),
                      child: Column(
                        children: [
                          const SizedBox(height: 200),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: Container(
                              height: 200,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(14),
                                  boxShadow: const [
                                    BoxShadow(
                                        blurRadius: 1,
                                        color: Colors.grey,
                                        spreadRadius: 0,
                                        offset: Offset(0, 0))
                                  ]),
                              child: Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 20),
                                      child: Column(
                                        children: [
                                          Stack(children: [
                                            TextFormField(
                                              keyboardAppearance:
                                                  Brightness.dark,
                                              style:
                                                  const TextStyle(fontSize: 18),
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.white)),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.white)),
                                                suffixIcon: Icon(Icons
                                                    .phone_android_outlined),
                                                labelText: 'Phone number',
                                                //label: Text('asdfs'),
                                                labelStyle: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            const Positioned(
                                              left: 0,
                                              right: 0,
                                              bottom: 5,
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 13),
                                                child: Divider(
                                                  color: Color.fromARGB(
                                                      255, 229, 223, 223),
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
                                        horizontal: 20, vertical: 10),
                                    child: Container(
                                      height: 50,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                                  255, 124, 158, 125)
                                              .withOpacity(0.5),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text(
                                          'SEND OTP',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
