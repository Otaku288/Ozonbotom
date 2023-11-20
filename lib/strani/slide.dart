import 'package:flutter/material.dart';

class Slide extends StatelessWidget {
  const Slide({super.key, this.i, this.i2, this.i3});

  final i;
  final i2;
  final i3;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${i2}",
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.lightBlue),
        child: Column(
          children: [
            Image.asset(
              "${i}",
              width: 500,
              height: 400,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SizedBox(
                width: 60,
              ),
              Text(
                "${i3}",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.add_shopping_cart_rounded),
                color: Colors.black87,
                iconSize: 40,
              )
            ]),
          ],
        ),
      ),
    );
  }
}
