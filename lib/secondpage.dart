import 'package:flutter/material.dart';

class StarbucksSecondPage extends StatelessWidget {
  const StarbucksSecondPage({super.key});

  //Card Image URL
  final String cardImgUrl = "https://i.ibb.co/BgfYHg4/2021-12-16-1-49-51.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Pay",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => print("Click the Pay icon on the yop right"),
            icon: Icon(Icons.list_rounded, color: Colors.grey),
          ),
        ],
      ),
      body: Column(
        children: [
          //Card
          Expanded(
            //Tip : If you want to have the item appear in the center of the screen when scrolling, use the PageView Widget
            child: PageView.builder(
              controller: PageController(
                viewportFraction: 0.85,
              ), // Make the item next to it slightly visible
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  child: Image.network(cardImgUrl),
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        offset: Offset(0, 5),
                        spreadRadius: 1,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // Coupon & e-Gift Item
          Container(
            height: 72,
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () => print("Coupon Selected"),
                    child: Text(
                      "Coupon",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 12,
                  width: 1,
                  color: Colors.grey,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () => print("e-Gift Item selected"),
                    child: Text(
                      "e-Gift Item",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
