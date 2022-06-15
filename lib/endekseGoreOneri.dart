import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthylifecoach/hesapla1.dart';
import 'package:healthylifecoach/hesapla2.dart';
import 'package:healthylifecoach/sabitler.dart';

class Endeks extends StatefulWidget {
  const Endeks({Key? key}) : super(key: key);

  @override
  State<Endeks> createState() => _EndeksState();
}

class _EndeksState extends State<Endeks> {
  int secilenKilo = 70, secilenBoy = 170;
  int hesapla() {
    double sonuc, hesap;
    hesap = (secilenBoy / 100);
    sonuc = (secilenKilo / (hesap * hesap));

    return sonuc.round();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 26, 101, 112),
      appBar: AppBar(title: Text("For Building a Better Life")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                image: DecorationImage(
                    image: AssetImage("assets/images/vucutKitleEndeks.jpg"),
                    fit: BoxFit.cover),
              ),
              width: double.infinity,
            ),
          ),
          Expanded(
            child: Container(
              height: 300,
              width: double.infinity,
              child: Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  "BOY",
                                  style: textRenkBeyaz(),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  secilenBoy.toString(),
                                  style: textRenkBeyaz(),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            side: BorderSide(
                                                color: Colors.white, width: 2)),
                                        onPressed: () {
                                          setState(() {
                                            secilenBoy++;
                                          });
                                        },
                                        child: Icon(
                                          FontAwesomeIcons.plus,
                                          color: Colors.white,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            side: BorderSide(
                                                color: Colors.white, width: 2)),
                                        onPressed: () {
                                          setState(() {
                                            secilenBoy--;
                                          });
                                        },
                                        child: Icon(
                                          FontAwesomeIcons.minus,
                                          color: Colors.white,
                                        )),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  "KILO",
                                  style: textRenkBeyaz(),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  secilenKilo.toString(),
                                  style: textRenkBeyaz(),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            side: BorderSide(
                                                color: Colors.white, width: 2)),
                                        onPressed: () {
                                          setState(() {
                                            secilenKilo++;
                                          });
                                        },
                                        child: Icon(
                                          FontAwesomeIcons.plus,
                                          color: Colors.white,
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                            side: BorderSide(
                                                color: Colors.white, width: 2)),
                                        onPressed: () {
                                          setState(() {
                                            secilenKilo--;
                                          });
                                        },
                                        child: Icon(
                                          FontAwesomeIcons.minus,
                                          color: Colors.white,
                                        )),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (hesapla() > 25) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HesaplamaBir()));
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HesaplamaIki()));
                            }
                          });
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(FontAwesomeIcons.calculator),
                            Text(
                              "HESAPLA",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(primary: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle textRenkBeyaz() {
    return TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14);
  }
}
