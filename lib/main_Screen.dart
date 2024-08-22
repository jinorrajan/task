import 'package:flutter/material.dart';

import 'constants/constants.dart';
import 'views/cart_screen.dart';
import 'views/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;

  final pages = [HomeScreen(), CartScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants().Ccontainerlightcolor,
      body: pages[pageIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50, bottom: 20),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  icon: pageIndex == 0
                      ? Icon(Icons.home_outlined,
                          color: Color.fromARGB(255, 0, 137, 123), size: 32)
                      : const Icon(
                          Icons.home_outlined,
                          color: Colors.black38,
                          size: 32,
                        )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  icon: pageIndex == 1
                      ? Icon(Icons.shopping_bag,
                          color: Color.fromARGB(255, 0, 137, 123), size: 32)
                      : const Icon(
                          Icons.shopping_bag,
                          color: Colors.black38,
                          size: 32,
                        )),
            ],
          ),
        ),
      ),
    );
  }
}
