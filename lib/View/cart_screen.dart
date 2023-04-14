import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_product/Controller/home_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  Homecontroller homecontroller = Get.put(Homecontroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Cart",
            style: GoogleFonts.lato(fontSize: 22, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade700,
      ),
      body: Obx(
        () => ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text(
                  "${homecontroller.cartList[index].image}",
                  style: TextStyle(fontSize: 40),
                ),
                title: Text(
                  "${homecontroller.cartList[index].name}",
                  style: GoogleFonts.lato(fontSize: 18),
                ),
                subtitle: Text(
                  "${homecontroller.cartList[index].price}",
                  style: GoogleFonts.lato(fontSize: 18),
                ),
                trailing: Icon(Icons.delete,color: Colors.red,),
                onTap: () {
                  homecontroller.cartList.removeAt(index);
                },
              );
            },
            itemCount: homecontroller.cartList.length),
      ),
    ));
  }
}
