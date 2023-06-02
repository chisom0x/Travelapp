// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:travelapp/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Travelapp(),
    );
  }
}

class Travelapp extends StatelessWidget {
  const Travelapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
              ),
              SizedBox(
                height: 324,
                width: 311,
                child: Image.asset('images/onpage.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    height: 340,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 239, 244, 255),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Travel Easily From',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Your Pocket',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Easily plan, manage and',
                          style: TextStyle(
                              color: Color.fromARGB(255, 188, 216, 230),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'book your trip and journey',
                          style: TextStyle(
                              color: Color.fromARGB(255, 188, 216, 230),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'with safari',
                          style: TextStyle(
                              color: Color.fromARGB(255, 188, 216, 230),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 214, 211, 211),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => MainScreen()));
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 90),
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 29, 63, 255),
                                borderRadius: BorderRadius.circular(40)),
                            child: Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
