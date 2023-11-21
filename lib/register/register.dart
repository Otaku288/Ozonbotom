import 'package:flutter/material.dart';
import 'package:flutter_application_8/strani/person.dart';

class register extends StatelessWidget {
  const register({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Регистрация'),
        centerTitle: false,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    labelText: 'Введите Имя', border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Введите фамилию', border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
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
                    labelText: 'Введите пароль', border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => person(),
                            ));
                      },
                      child: Text('Зарегистрироваться'))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
