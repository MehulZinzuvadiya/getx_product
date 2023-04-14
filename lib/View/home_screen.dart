import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_product/Controller/home_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Homecontroller homecontroller = Get.put(Homecontroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Flipkart",
            style: GoogleFonts.lato(fontSize: 22, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade700,
        actions: [
        IconButton(onPressed:() {
          Get.toNamed('cart');
        }, icon: Icon(Icons.add_shopping_cart)),
        ],
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () => Get.toNamed('product',arguments: index),
              leading: Text(
                "${homecontroller.productList[index].image}",
                style: TextStyle(fontSize: 40),
              ),
              title: Text(
                "${homecontroller.productList[index].name}",
                style: GoogleFonts.lato(fontSize: 18),
              ),
              subtitle: Text(
                "${homecontroller.productList[index].price}",
                style: GoogleFonts.lato(fontSize: 18),
              ),
            );
          },
          itemCount: homecontroller.productList.length),
    ));
  }
}
