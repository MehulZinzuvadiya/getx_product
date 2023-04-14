import 'package:get/get.dart';

import '../Model/product_model.dart';

class Homecontroller extends GetxController {
  RxList<ProductModel> productList = <ProductModel>[
    ProductModel(
      name: "Apple",
      price: "100",
      image: "🍎",
    ),
    ProductModel(
      name: "PineApple",
      price: "200",
      image: "🍍",
    ),
    ProductModel(
      name: "Grapes",
      price: "400",
      image: "🍇",
    ),
    ProductModel(
      name: "Peach",
      price: "1000",
      image: "🍑",
    ),
    ProductModel(
      name: "Cherry",
      price: "600",
      image: "🍒",
    ),
  ].obs;

  RxList<ProductModel> cartList = <ProductModel>[].obs;
}
