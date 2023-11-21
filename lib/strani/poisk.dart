import 'package:flutter/material.dart';
import 'package:flutter_application_8/main.dart';
import 'package:flutter_application_8/strani/korzina.dart';
import 'package:flutter_application_8/strani/person.dart';

final List<String> katalog = ['lib/assets/images/1614577809_27-p-foto-telefona-na-belom-fone-33.png', 'lib/assets/images/ьс.png', 'lib/assets/images/tele.png', 'lib/assets/images/xnx.png', 'lib/assets/images/184.0x500.png'];
final List<String> katalog2 = ['Мобильные телефоны и аксессуары', 'Компьютерная техника', 'телевизоры', 'Игровые приставки', 'Электронные часы'];

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
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: katalog.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              
            },
            child: Container(
              width: 300,
              height: 300,
              margin: EdgeInsets.all(16),
            
              decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: [
                 Padding(padding: EdgeInsets.all(8)),
                 
                  Text('${katalog2[index]}', style: TextStyle(color: Colors.white,   ),),
                   Image.asset('${katalog[index]}', width: MediaQuery.of(context).size.width,),
                ],
              ),
            ),
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
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return korzina();
                    },
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
      ),
    );
  }
}
