import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_product/View/product_detail.dart';
import 'View/cart_screen.dart';
import 'View/home_screen.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (p0) => HomeScreen(),
      'product': (p0) => ProductDetail(),
      'cart':(p0) =>CartScreen(),
    },
  ));
}
