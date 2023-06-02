// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, camel_case_types
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController controller = PageController();
  int activeindex = 0;
  List<String> activites = [
    'climbing',
    'jumping',
    'diving',
    'climbing',
    'jumping',
    'diving',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 80,
                        margin: EdgeInsets.only(left: 20, top: 10),
                        child: Image.asset('images/profile.png'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text(
                              'Howdy',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      const Color.fromARGB(228, 158, 158, 158)),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Big Kelz',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  child: Stack(
                    children: [
                      Container(
                        width: 54,
                        height: 54,
                        margin: EdgeInsets.only(top: 16, right: 20),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        )),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 30, left: 20),
                alignment: Alignment.centerLeft,
                child: RichText(
                    text: TextSpan(
                        text: 'Where would\nyou like to go?',
                        style: DefaultTextStyle.of(context).style.copyWith(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.blue,
                            decorationThickness: 2.5,
                            decorationStyle: TextDecorationStyle.solid)))),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search Location',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
                Container(
                  width: 57,
                  height: 59,
                  margin: EdgeInsets.only(top: 16, right: 10),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Icon(
                    Icons.filter_1_sharp,
                    color: Colors.white,
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      activites.length,
                      (index) =>
                          menu(activites[index], activeindex == index, () {
                            setState(() {
                              activeindex = index;
                            });
                          }))),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Favourite places',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Text(
                    'view all',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            if (activeindex == 0) placecard(Colors.yellow),
            if (activeindex == 1) placecard(Colors.red),
            if (activeindex == 2) placecard(Colors.blue),
            if (activeindex == 3) placecard(Colors.green),
            if (activeindex == 4) placecard(Colors.pink),
          ],
        ),
      ),
    ));
  }
}

class placecard extends StatelessWidget {
  Color color;
  placecard(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                // child: Image.asset('images/Rectangle 5.png'),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 50, right: 50, top: 110, bottom: 20),
                height: 60,
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(10)),
                //child: Image.asset('images/onboard.png'),
              )
            ],
          )
        ],
      ),
    );
  }
}

class menu extends StatelessWidget {
  String text;
  menu(this.text, this.isActive, this.onTap);
  final bool isActive;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 100,
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            color: isActive ? Colors.blue : Colors.white,
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 14, color: const Color.fromARGB(228, 158, 158, 158)),
          ),
        ),
      ),
    );
  }
}
