import 'package:flutter/material.dart';
import 'package:flutter_application_8/strani/slide.dart';

class element extends StatelessWidget {
  const element({super.key, this.mass, this.mass1, this.mass2});

  final mass;
  final mass1;
  final mass2;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1),
        itemCount: mass.length,
        itemBuilder: ((context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Slide(
                              i: mass[index],
                              i2: mass1[index],
                              i3: mass2[index],
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
                      "${mass[index]}",
                      height: 200,
                      width: 170,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            mass1[index],
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
                            mass2[index],
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
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Slide(i: mass[index], i2: mass1[index], i3: mass2[index],)));
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
