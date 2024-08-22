
import 'package:flutter/material.dart';

class TileWidget extends StatelessWidget {
  String title;

  String price;
  
  String image;

  TileWidget({
    Key? key,
    required this.title,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(image),
            ),
          ),

          // ignore: prefer_const_constructors
          Column(
            children: [
              Center(
                  child: Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              )),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text(price, style: TextStyle(fontSize: 16)),
                  ),
                  InkWell(
                    child: Padding(
                      padding: EdgeInsets.only(right: 18),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 220, 240, 239),
                        child: Icon(
                          Icons.card_travel_sharp,
                          color: Color.fromARGB(255, 0, 137, 123),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
