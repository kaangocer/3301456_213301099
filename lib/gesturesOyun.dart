import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';

import 'anaSayfa.dart';

class Gestures extends StatelessWidget {
  const Gestures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AnaSayfa()));
            },
            child: Icon(Icons.home),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar(
              activeColor: Colors.red,
              inactiveColor: Colors.white,
              backgroundColor: Colors.black,
              gapLocation: GapLocation.center,
              icons: [Icons.arrow_back, Icons.history],
              activeIndex: 1,
              onTap: (int) {
                Navigator.pop(context);
              }),
          appBar: AppBar(
            title: Text("Ekranı Masmavi Yap !"),
          ),
          body: GesturesOyun()),
    );
  }
}

class GesturesOyun extends StatefulWidget {
  const GesturesOyun({Key? key}) : super(key: key);

  @override
  State<GesturesOyun> createState() => _GesturesOyunState();
}

class _GesturesOyunState extends State<GesturesOyun> {
  String? seciliKutu;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                  onTap: (() {
                    setState(() {
                      seciliKutu = "1";
                    });
                  }),
                  child: GestureContainer(
                    rakam: "1",
                    renk: seciliKutu == "4"
                        ? Colors.blue
                        : seciliKutu == "9"
                            ? Colors.blue
                            : Colors.amberAccent,
                  )),
              GestureDetector(
                  onTap: (() {
                    setState(() {
                      seciliKutu = "2";
                    });
                  }),
                  child: GestureContainer(
                    rakam: "2",
                    renk: seciliKutu == "4"
                        ? Colors.blue
                        : seciliKutu == "3"
                            ? Colors.blue
                            : Colors.red,
                  )),
              GestureDetector(
                  onTap: (() {
                    setState(() {
                      seciliKutu = "3";
                    });
                  }),
                  child: GestureContainer(
                      rakam: "3",
                      renk: seciliKutu == "4"
                          ? Colors.blue
                          : seciliKutu == "9"
                              ? Colors.blue
                              : Colors.grey)),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                  onTap: (() {
                    setState(() {
                      seciliKutu = "4";
                    });
                  }),
                  child: GestureContainer(
                    rakam: "4",
                    renk: seciliKutu == "4"
                        ? Colors.blue
                        : seciliKutu == "5"
                            ? Colors.blue
                            : Colors.green,
                  )),
              GestureDetector(
                  onTap: (() {
                    setState(() {
                      seciliKutu = "5";
                    });
                  }),
                  child: GestureContainer(
                    rakam: "5",
                    renk: seciliKutu == "4"
                        ? Colors.blue
                        : seciliKutu == "5"
                            ? Colors.blue
                            : seciliKutu == "6"
                                ? Colors.blue
                                : Colors.pink,
                  )),
              GestureDetector(
                  onTap: (() {
                    setState(() {
                      seciliKutu = "6";
                    });
                  }),
                  child: GestureContainer(
                    rakam: "6",
                    renk: seciliKutu == "4"
                        ? Colors.blue
                        : seciliKutu == "1"
                            ? Colors.blue
                            : seciliKutu == "6"
                                ? Colors.blue
                                : Colors.orange,
                  )),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                  onTap: (() {
                    setState(() {
                      seciliKutu = "7";
                    });
                  }),
                  child: GestureContainer(
                    rakam: "7",
                    renk: seciliKutu == "4"
                        ? Colors.blue
                        : seciliKutu == "8"
                            ? Colors.blue
                            : seciliKutu == "2"
                                ? Colors.blue
                                : Colors.blueGrey,
                  )),
              GestureDetector(
                  onTap: (() {
                    setState(() {
                      seciliKutu = "8";
                    });
                  }),
                  child: GestureContainer(
                    rakam: "8",
                    renk: seciliKutu == "4"
                        ? Colors.blue
                        : seciliKutu == "9"
                            ? Colors.blue
                            : seciliKutu == "5"
                                ? Colors.blue
                                : Colors.yellow,
                  )),
              GestureDetector(
                  onTap: (() {
                    setState(() {
                      seciliKutu = "9";
                    });
                  }),
                  child: GestureContainer(
                    rakam: "9",
                    renk: seciliKutu == "4"
                        ? Colors.blue
                        : seciliKutu == "2"
                            ? Colors.blue
                            : seciliKutu == "9"
                                ? Colors.blue
                                : Colors.white,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
