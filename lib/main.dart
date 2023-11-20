import 'package:flutter/material.dart';
import 'package:flutter_application_8/element/BottomAppBar.dart';
import 'package:flutter_application_8/element/elements.dart';
import 'package:flutter_application_8/strani/slide.dart';

final List<String> mass = [
  'lib/assets/images/air.png',
  'lib/assets/images/air1.png',
  'lib/assets/images/marshall.png',
  'lib/assets/images/jbl.png',
  'lib/assets/images/no.png',
  'lib/assets/images/no1.png',
  'lib/assets/images/no2.png',
  'lib/assets/images/no3.png',
  'lib/assets/images/no4.png',
  'lib/assets/images/no7.png',
];
final List<String> mass1 = [
  'Airpods pro',
  'Airpods 1',
  'Marshall',
  'Jbl',
  'no name ' 'no name 2',
  'no name 3',
  'no name 4',
  'no name 5',
  'no name 6',
  'no name 7'
];
final List<String> mass2 = [
  '19999 рублей',
  '10999 рублей',
  '11999 рублей',
  '29999 рублей',
  '1 рубль',
  '3 рубля',
  '4 рубля',
  '5 рублей',
  '6 рублей',
  '7 рублей'
];

void main() {
  runApp(const MaterialApp(
    home: ListViewLesson(),
    debugShowCheckedModeBanner: false,
  ));
}

class ListViewLesson extends StatelessWidget {
  const ListViewLesson({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('Ozon'),
        centerTitle: true,
      ),
      body: 
      element(mass: mass, mass1: mass1, mass2: mass2,),


      bottomNavigationBar: bottom(),
    );
  }
}
