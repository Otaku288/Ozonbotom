import 'package:flutter/material.dart';
import 'package:flutter_application_8/strani/korzina.dart';
import 'package:flutter_application_8/strani/person.dart';
import 'package:flutter_application_8/strani/poisk.dart';

class bottom extends StatelessWidget {
  const bottom({super.key});

  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.lightBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: Colors.white,
              )),
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return OzonPoisk();
                },
              ));
            },
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => korzina(),
                    ));
              },
              icon: Icon(
                Icons.local_grocery_store,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return person();
                  },
                ));
              },
              icon: Icon(
                Icons.account_circle,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
