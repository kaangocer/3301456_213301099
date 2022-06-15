import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';
import 'package:healthylifecoach/tarifler/yabanMersinliGranola.dart';

import 'tarifler/fitPizza.dart';
import 'tarifler/incirliRicottaliKek.dart';

class HesaplamaIki extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 26, 101, 112),
      appBar: AppBar(title: Text("For Building a Better Life")),
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: OnerilerColumn(
                        oneriJpg: "FitPizza",
                        oneriJpgAdi: "Fit Pizza",
                        onPressOneri: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FitPizza()));
                        }),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: OnerilerColumn(
                        oneriJpg: "YabanMersinliGranola",
                        oneriJpgAdi: "Yaban Mersinli Granola",
                        onPressOneri: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      YabanMersinliGranola()));
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: OnerilerColumn(
                        oneriJpg: "IncirliRicottaliKek",
                        oneriJpgAdi: "İncirli Ricottalı Kek",
                        onPressOneri: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => IncirliRicottaliKek()));
                        }),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: OnerilerColumn(
                        oneriJpg: "ProteinPlusPaketi",
                        oneriJpgAdi: "Protein Plus Paketi",
                        onPressOneri: () {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
