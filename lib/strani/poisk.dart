import 'package:flutter/material.dart';
import 'package:flutter_application_8/main.dart';
import 'package:flutter_application_8/strani/person.dart';

class OzonPoisk extends StatelessWidget {
  const OzonPoisk({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('Каталог'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(color: Colors.blue),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return ListViewLesson();
                    },
                  ));
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {
                  
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
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
      ),
    );
  }
}
