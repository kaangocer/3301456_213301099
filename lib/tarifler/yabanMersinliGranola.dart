import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';

class YabanMersinliGranola extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: YabanMersinliGranolaTarif(),
      ),
      renk: Colors.white,
    );
  }
}

class YabanMersinliGranolaTarif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TariflerIcerik(
          tariflerIcerikJpg: "YabanMersinliGranolaYakindan",
          kisiSayisi: "2-3",
          pisirmeSuresi: "40 Dakika",
          tariflerAciklama:
              "Alerjiniz varsa siz de malzemeleri değiştirerek kendi granolanızı kendiniz yapabilirsiniz!",
        ),
        TariflerMalzemeler(tariflerMalzeme: "2.5 Su Bardağı Yulaf Ezmesi)"),
        TariflerMalzemeler(
            tariflerMalzeme: "1 Su Bardağı Badem Ceviz Karışımı"),
        TariflerMalzemeler(tariflerMalzeme: "1 Çay Kaşığı Tarçın"),
        TariflerMalzemeler(tariflerMalzeme: "1 Çay Kaşığı Tuz"),
        TariflerMalzemeler(tariflerMalzeme: "1/2 Çay Bardağı Dut Kurusu"),
        TariflerMalzemeler(
            tariflerMalzeme: "1/2 Çay Bardağı Kuru Yaban Mersini"),
        TariflerMalzemeler(
            tariflerMalzeme: "1/2 Çay Bardağı Kabak Çekirdeği İçi"),
        TariflerMalzemeler(
            tariflerMalzeme: "2 Yemek Kaşığı Hindistan Cevizi Tozu"),
        TariflerMalzemeler(tariflerMalzeme: "125 mg Organik Elma Püresi"),
        TariflerMalzemeler(tariflerMalzeme: "1 Yemek Kaşığı Zeytinyağı"),
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
                "1.)Badem ve cevizleri iri iri doğrayıp yulafla birlikte büyük bir kapta karıştırıyoruz."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "2.)Elma püresi,hindistan cevizi, tarçın ve zeytinyağını ayrı bir kapta karıştırdıktan sonra diğerleriyle birleştiriyoruz."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "3.)Karışımı yağlı kağıt serdiğimiz fırın tepsine güzelce yayıyoruz."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "4.)Önceden ısıtılmış 150 derece fırında 40 dakikada pişiriyoruz."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "5.)Her 10 dakikada bir açıp karıştıralım."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "6.)Kabak çekirdeği, dut kurusu ve yaban mersinini son 10 dk ekleyelim."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "7.)Fırından aldıktan sonra birkaç saat tepside bekletip soğutalım."),
      SizedBox(height:70)],
    );
  }
}
