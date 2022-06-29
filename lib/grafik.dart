import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Grafik extends StatefulWidget {
  @override
  State<Grafik> createState() => _GrafikState();
}

class _GrafikState extends State<Grafik> {
  @override
  Widget build(BuildContext context) {
    var data = [
      satis("Pazartesi", 120,),
      satis("Salı", 250),
      satis("Çarşamba", 170),
      satis("Perşembe", 140),
      satis("Cuma", 145),
      satis("Cumartesi", 90),
      satis("Pazar", 135)
    ];

    var grafik = [
      charts.Series(
          domainFn: (satis satis, _) => satis.gun,
          measureFn: (satis satis, _) => satis.satislar,
          id: "Günler",
          data: data,
          labelAccessorFn: (satis satis, _) =>
              "${satis.gun}: ${satis.satislar.toString()}")
    ];

    var chart = charts.BarChart(
      grafik,
      vertical: false,
      barRendererDecorator: charts.BarLabelDecorator<String>(),
    );

    return Scaffold(
      appBar: AppBar(title: Text("Build For a Better Life")),
      body: Column(
        children: [
          Text(
            "Ortalama Satış",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 500, child: chart),
        ],
      ),
    );
  }
}

class satis {
  final String gun;
  final int satislar;

  satis(this.gun, this.satislar);
}
