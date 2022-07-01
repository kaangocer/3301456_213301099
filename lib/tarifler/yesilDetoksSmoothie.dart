import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';

class YesilDetoksSmoothie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: YesilDetoksSmoothieTarif(),
      ),
      renk: Colors.white,
    );
  }
}

class YesilDetoksSmoothieTarif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TariflerIcerik(
          tariflerIcerikJpg: "YesilDetoksSmoothieYakindan",
          kisiSayisi: "1",
          pisirmeSuresi: "15 Dakika",
          tariflerAciklama:
              "Bol miktarda vitamin,mineral,lif ve antioksidan içeren sindirimi kolay düşük kalorili bir tarif. ",
        ),
        TariflerMalzemeler(tariflerMalzeme: "1 Demet Maydanoz"),
        TariflerMalzemeler(tariflerMalzeme: "1 Avuç Nane Yaprağı"),
        TariflerMalzemeler(tariflerMalzeme: "1 Salatalık"),
        TariflerMalzemeler(tariflerMalzeme: "1/2 Kabuğu Soyulmuş Limon"),
        TariflerMalzemeler(
            tariflerMalzeme: "1 Tatlı Kaşığı Rendelenmiş Taze Zencefil"),
        TariflerMalzemeler(tariflerMalzeme: "1 İnce Dilim Ananas"),
        TariflerMalzemeler(tariflerMalzeme: "1 Kivi"),
        TariflerMalzemeler(tariflerMalzeme: "1 Su bardağı Su"),
        SizedBox(height: 12),
        Container(
          child: Text("Hazırlanışı:",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green)),
        ),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "Tüm malzemeleri pürüzsüz hale gelene kadar blenderdan geçirelim."),
        SizedBox(height: 70)
      ],
    );
  }
}
