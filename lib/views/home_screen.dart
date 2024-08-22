// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shopping_app/constants/constants.dart';

import '../controller/product_controller.dart';
import 'widget/tileWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 220, 240, 239),
      body: SafeArea(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Constants().Ccontainerlightcolor,
              leading: null,
              title: Center(
                  child: Text(
                "Shopping  App",
                style:
                    GoogleFonts.bungee(color: const Color.fromARGB(255, 0, 137, 123), fontSize: 22),
              )),
            ),
            Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "search",
                    hintStyle: TextStyle(color: Constants().CthirdtexColor),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white,
                        )),
                  ),
                )),

            //GridView to display Product
            Expanded(
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.all(20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                  mainAxisSpacing: 16, 
                  crossAxisSpacing: 16, 
                  childAspectRatio: 0.8, 
                ),
                 itemCount: productController.products.length,
                 itemBuilder: (context, index) {
                   final product = productController.products[index];
                   return  TileWidget(
                    title: product.name,
                    price: "💲:${product.price.toString()}", image: product.imageUrl,
                  );
                 },
                
              ),
            )
          ],
        ),
      ),
    );
  }
}
