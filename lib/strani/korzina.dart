import 'package:flutter/material.dart';
import 'package:flutter_application_8/element/elements.dart';
import 'package:flutter_application_8/main.dart';
import 'package:flutter_application_8/strani/person.dart';
import 'package:flutter_application_8/strani/poisk.dart';

class korzina extends StatefulWidget {
  const korzina({super.key, this.pust, this.pust2, this.pust3});
  final pust;
  final pust2;
  final pust3;

  @override
  State<korzina> createState() => _korzinaState();
}

class _korzinaState extends State<korzina> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('Корзина'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView.builder(
        itemCount: pust2.length,
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue,
              child: Row(
                children: [
                  Image.asset(
                    '${pust[index]}',
                    height: 120,
                    width: 140,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${pust2[index]}',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '${pust3[index]}',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 250,),
                  Container(
                    child: Column(
                      children: [
                        
                        IconButton(
                            onPressed: () {
                              setState(() {
                                pust.remove(pust[index]);
                                pust2.remove(pust2[index]);
                                pust3.remove(pust3[index]);
                              });
                            
                            },
                            icon: Icon(
                              Icons.clear,
                              color: Colors.black,
                              size: 20,
                            )),
                            SizedBox(height: 100,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListViewLesson(),
                      ));
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OzonPoisk(),
                      ));
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.local_grocery_store),
              color: Colors.white,
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => person(),
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
