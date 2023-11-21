import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_8/register/register.dart';
import 'package:flutter_application_8/strani/korzina.dart';
import 'package:flutter_application_8/strani/poisk.dart';
import 'package:flutter_application_8/main.dart';
import 'package:flutter_application_8/register/sign.dart';

class person extends StatelessWidget {
  const person({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Личный кабинет"),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: Colors.blue),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Введите email', border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Введите пароль',
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 120,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.black87,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ListViewLesson(),
                            ));
                      },
                      child: Text('Войти'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person_add),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => register(),
                            ));
                        TextButton(
                            onPressed: () {},
                            
                            child: Text('Зарегистрироваться'), );
                      },
                      child: Text('Зарегистрироваться'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
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
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return OzonPoisk();
                  },
                ));
              },
              icon: Icon(Icons.search),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => korzina(),
                    ));
              },
              icon: Icon(Icons.local_grocery_store),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle),
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
