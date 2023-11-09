import 'package:flutter/material.dart';
import 'package:shop_project/view/account/login.dart';
import 'package:badges/badges.dart' as badges;
import 'package:shop_project/view/account/register.dart';
import 'package:shop_project/view/detail/shopping_cart.dart';
import 'package:shop_project/view/account/wishlish_screen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _BodyDrawerState();
}

class _BodyDrawerState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(onGenerateRoute: (settings) {
        if (settings.name == '/LoginScreen') {
          if (settings.name == '/RegisterScreen') {
            return MaterialPageRoute(
                builder: (context) => const RegisterScreen());
          }
          return MaterialPageRoute(builder: (context) => const LoginScreen());
        }
        if (settings.name == '/WishlistScreen') {
          return MaterialPageRoute(builder: (context) => const WishlishScreen());
        }
        return MaterialPageRoute(builder: (context) {
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
            body: Padding(
              padding: const EdgeInsets.only(top: 5, right: 5, left: 5),
              child: Column(children: [
                //========== Account Info ===========
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Row(children: [
                      Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.person_outline_rounded,
                            size: 33,
                          )),
                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Account Info',
                              style: TextStyle(fontSize: 18),
                            ),
                            Padding(
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
                ),
                const Divider(
                  color: Color.fromARGB(255, 222, 216, 216),
                  height: 2,
                  thickness: 1,
                  indent: 80,
                ),
                //============ Addresses ============
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Row(children: [
                      Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.house_outlined,
                            size: 33,
                          )),
                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Addresses',
                              style: TextStyle(fontSize: 18),
                            ),
                            Padding(
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
                ),
                const Divider(
                  color: Color.fromARGB(255, 222, 216, 216),
                  height: 2,
                  thickness: 1,
                  indent: 80,
                ),
                //============ Wishlist ============
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WishlishScreen()));
                  },
                  child: const SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Row(children: [
                      Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.favorite_outline,
                            size: 33,
                          )),
                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Wishlist',
                              style: TextStyle(fontSize: 18),
                            ),
                            Padding(
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
                ),
                const Divider(
                  color: Color.fromARGB(255, 222, 216, 216),
                  height: 2,
                  thickness: 1,
                  indent: 80,
                ),
                //============ Orders ============
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Row(children: [
                      Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.shop,
                            size: 33,
                          )),
                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Orders',
                              style: TextStyle(fontSize: 18),
                            ),
                            Padding(
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
                ),
                const Divider(
                  color: Color.fromARGB(255, 222, 216, 216),
                  height: 2,
                  thickness: 1,
                  indent: 80,
                ),
                //============ Return Requests ============
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Row(children: [
                      Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.supervised_user_circle,
                            size: 33,
                          )),
                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Return Resquests',
                              style: TextStyle(fontSize: 18),
                            ),
                            Padding(
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
                ),
                const Divider(
                  color: Color.fromARGB(255, 222, 216, 216),
                  height: 2,
                  thickness: 1,
                  indent: 80,
                ),
                //============ Shopping Cart ============
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Row(children: [
                      Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.shopping_cart,
                            size: 33,
                          )),
                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Shopping Cart',
                              style: TextStyle(fontSize: 18),
                            ),
                            Padding(
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
                ),
                const Divider(
                  color: Color.fromARGB(255, 222, 216, 216),
                  height: 2,
                  thickness: 1,
                  indent: 80,
                ),
                //============ MyProduct Review ============
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Row(children: [
                      Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.house_outlined,
                            size: 33,
                          )),
                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'My Product reviews',
                              style: TextStyle(fontSize: 18),
                            ),
                            Padding(
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
                ),
                const Divider(
                  color: Color.fromARGB(255, 222, 216, 216),
                  height: 2,
                  thickness: 1,
                  indent: 80,
                ),
                //============ Login ============
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Row(children: [
                      Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.login_outlined,
                            size: 33,
                          )),
                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Log in',
                              style: TextStyle(fontSize: 18),
                            ),
                            Padding(
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
                ),
                const Divider(
                  color: Color.fromARGB(255, 222, 216, 216),
                  height: 2,
                  thickness: 1,
                  indent: 80,
                )
              ]),
            ),
          );
        });
      }),
    );
  }
}
