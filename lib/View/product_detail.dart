import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_product/Controller/home_controller.dart';
import 'package:getx_product/Model/product_model.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  Homecontroller homecontroller = Get.put(Homecontroller());

  @override
  Widget build(BuildContext context) {
    int index = Get.arguments;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("Product Detail",
                  style: GoogleFonts.lato(fontSize: 22, color: Colors.white)),
              centerTitle: true,
              backgroundColor: Colors.deepPurple.shade700,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "${homecontroller.productList[index].image}",
                    style: TextStyle(fontSize: 100),
                  ),
                  Text(
                    "${homecontroller.productList[index].name}",
                    style: GoogleFonts.lato(fontSize: 30),
                  ),
                  Text(
                    "${homecontroller.productList[index].price}",
                    style: GoogleFonts.lato(fontSize: 30),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green.shade700),
                      onPressed: () {
                        ProductModel p1 = ProductModel(
                          image: "${homecontroller.productList[index].image}",
                          price: "${homecontroller.productList[index].price}",
                          name: "${homecontroller.productList[index].name}",
                        );
                        homecontroller.cartList.add(p1);
                        Get.back();
                      },
                      child: Text(
                        "Add to Cart",
                        style: GoogleFonts.lato(fontSize: 18),
                      ))
                ],
              ),
            )));
  }
}
