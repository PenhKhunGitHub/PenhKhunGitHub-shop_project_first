


import 'package:flutter/material.dart';
import 'package:shop_project/view/account/account_screen.dart';
import 'package:shop_project/view/account/login.dart';
import 'package:shop_project/view/account/register.dart';
import 'package:shop_project/view/account/wishlish_screen.dart';
import 'package:shop_project/view/bottom_navigationbar/bottom_navigation_bar.dart';
import 'package:shop_project/view/detail/detail_brand.dart';
import 'package:shop_project/view/detail/detail_category.dart';
import 'package:shop_project/view/detail/detail_product.dart';

Map<String, Widget Function(BuildContext)> appRouter = {
  "/":(context)=> const BottomBar(),
  "/ProductDetail":(context)=> const ProductDetail(),
  "/BrandDetail":(context) =>  const BrandDetail(),
  "/CategoryDetail":(context) =>  const CategoryDetail(),
  "/LoginScreen":(context) =>  const LoginScreen(),
  "/WishlistScreen":(context)=> const WishlishScreen(),
  "/RegisterScreen":(context)=> const RegisterScreen(),
  "/AccountScreen":(context) =>  const AccountScreen()
};
