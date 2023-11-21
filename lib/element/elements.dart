import 'package:flutter/material.dart';
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

final List pust = [];
final List pust2 = [];
final List pust3 = [];

class element extends StatefulWidget {
  const element({super.key, this.mass, this.mass1, this.mass2});
  final mass;
  final mass1;
  final mass2;

  @override
  State<element> createState() => _elementState();
}

class _elementState extends State<element> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1),
        itemCount: widget.mass.length,
        itemBuilder: ((context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Slide(
                              i: widget.mass[index],
                              i2: widget.mass1[index],
                              i3: widget.mass2[index],
                            )));
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16)),
                margin: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Image.asset(
                      "${widget.mass[index]}",
                      height: 200,
                      width: 170,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            widget.mass1[index],
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            widget.mass2[index],
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton.filledTonal(
                                  onPressed: () {
                                    pust.add(mass[index]);
                                    pust2.add(mass1[index]);
                                    pust3.add(mass2[index]);
                                  },
                                  color: Colors.black87,
                                  iconSize: 20,
                                  icon: const Icon(
                                    Icons.add_shopping_cart,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ));
        }));
  }
}
