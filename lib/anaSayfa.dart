import 'package:flutter/material.dart';
import 'package:healthylifecoach/beslenmePaketleri.dart';
import 'package:healthylifecoach/endekseGoreOneri.dart';

import 'package:healthylifecoach/sabitler.dart';
import 'package:healthylifecoach/tarifler.dart';

import 'detoks.dart';
import 'main.dart';

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
                        "İçecekler",
                        style: textRenk(),
                      ),
                      onPressed: () {})),
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
                        "Eğlence",
                        style: textRenk(),
                      ),
                      onPressed: () {})),
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
      ],
    );
  }
}
