import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';

class Avokadolu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: AvokadoluBruschetta(),
      ),
      renk: Colors.white,
    );
  }
}

class AvokadoluBruschetta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TariflerIcerik(
          tariflerIcerikJpg: "AvokadoluBruschettaYakindan",
          kisiSayisi: "2-4",
          pisirmeSuresi: "15 Dakika",
          tariflerAciklama:
              "Çok sevdiğim ve sık sık da yaptığım bir başlangıç atıştırması. Ben kızarmış ekşi mayalı ekmeğin üzerinde servis ediyorum siz dilediğiniz başka bir ekmek tercih edebilirsiniz.",
        ),
        TariflerMalzemeler(tariflerMalzeme: "3-5 Küçük Domates"),
        TariflerMalzemeler(tariflerMalzeme: "1 Avokado"),
        TariflerMalzemeler(tariflerMalzeme: "4-5 Yaprak Taze Fesleğen"),
        TariflerMalzemeler(tariflerMalzeme: "3 Yemek Kaşığı Zeytinyağı"),
        TariflerMalzemeler(tariflerMalzeme: "Tuz,karabiber"),
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
                "1.)Küçük domatesleri dörde bölüp kaba aldık(isterseniz 2 adet soyulup çekirdekleri çıkarılmış ve küp küp doğranmış büyük domates de olur)."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "2.)Fesleğenleri ince ince doğrayıp kaba ekledik."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "3.)Dilim yeşil zeytinleri (bıçakla ufaltırsanız daha iyi olur) ve küp küp doğranmış avokadoyu da ekledikten sonra zeytinyağı, tuz ve karabiberle karıştırdık."),
      ],
    );
  }
}
