import 'package:flutter/material.dart';
import 'package:healthylifecoach/beslenmePaketleri.dart';
import 'package:healthylifecoach/dunyaMutfagi.dart';
import 'package:healthylifecoach/endekseGoreOneri.dart';
import 'package:healthylifecoach/gesturesOyun.dart';
import 'package:healthylifecoach/grafik.dart';

import 'package:healthylifecoach/sabitler.dart';
import 'package:healthylifecoach/tarifler.dart';

import 'detoks.dart';

class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: TumPaketler(),
      ),
      renk: Colors.blue,
    );
  }
}

class TumPaketler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                  margin: EdgeInsets.all(10),
                  width: 100,
                  height: 150,
                  child: ElevatedButton(
                      style: styleForm(),
                      child: Text(
                        "Detoks Paketleri",
                        style: textRenk(),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Detoks()));
                      })),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.all(10),
                  width: 100,
                  height: 150,
                  child: ElevatedButton(
                      style: styleForm(),
                      child: Text(
                        "Günlere Göre Ortalama Satış",
                        style: textRenk(),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Grafik()));
                      })),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.all(10),
                  width: 100,
                  height: 150,
                  child: ElevatedButton(
                      style: styleForm(),
                      child: Text(
                        "Beslenme Paketleri",
                        style: textRenk(),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Beslenme()));
                      })),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                  margin: EdgeInsets.all(10),
                  width: 100,
                  height: 150,
                  child: ElevatedButton(
                      style: styleForm(),
                      child: Text(
                        "Tarifler",
                        style: textRenk(),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Tarif()));
                      })),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.all(10),
                  width: 100,
                  height: 150,
                  child: ElevatedButton(
                      style: styleForm(),
                      child: Text(
                        "Dünya Mutfağı",
                        style: textRenk(),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DunyaMutfagi()));
                      })),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.all(10),
                  width: 100,
                  height: 150,
                  child: ElevatedButton(
                      style: styleForm(),
                      child: Text(
                        "Endekse Göre Öneri",
                        style: textRenk(),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Endeks()));
                      })),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.all(10),
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                      style: styleForm(),
                      child: Text(
                        "Gestures Oyun",
                        style: textRenk(),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Gestures()));
                      })),
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ],
    );
  }
}
