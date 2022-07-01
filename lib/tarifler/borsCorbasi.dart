import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';

class BorsCorbasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: BorsCorbasiTarif(),
      ),
      renk: Colors.white,
    );
  }
}

class BorsCorbasiTarif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TariflerIcerik(
          tariflerIcerikJpg: "BorsCorbasiYakindan",
          kisiSayisi: "4-5",
          pisirmeSuresi: "30 Dakika",
          tariflerAciklama:
              "Aslında pancarlı ve etli yapılır fakat ben böyle daha hafif ve lezzetli olduğunu düşünüyorum.",
        ),
        TariflerMalzemeler(tariflerMalzeme: "1 Küçük Soğan)"),
        TariflerMalzemeler(tariflerMalzeme: "1/2 Havuç"),
        TariflerMalzemeler(tariflerMalzeme: "1/2 Kırmızı Biber"),
        TariflerMalzemeler(tariflerMalzeme: "1 Domates Rendesi"),
        TariflerMalzemeler(tariflerMalzeme: "2 Küçük Patates"),
        TariflerMalzemeler(tariflerMalzeme: "200 gr Lahana"),
        TariflerMalzemeler(tariflerMalzeme: "1 Yemek Kaşığı Tereyağı"),
        TariflerMalzemeler(tariflerMalzeme: "1 Tahta Kaşığı Domates Salçası"),
        TariflerMalzemeler(tariflerMalzeme: "4-5 Yaprak Reyhan"),
        TariflerMalzemeler(tariflerMalzeme: "9 Su Bardağı Su"),
        TariflerMalzemeler(tariflerMalzeme: "Tuz ve Karabiber"),
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
                "1.)Soğan, havuç ve kırmızı biberleri tereyağında kavurduk."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "2.)Domates salçasını ve rendesini ekleyip devam ettik."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "3.)Küp küp doğranmış patatesleri de ekleyip 2 dk daha kavurduktan sonra sıcak su ve reyhanları ekleyip kapatıp bekledik."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "4.)Kaynamaya başlayınca reyhanları alıp lahana, tuz ve karabiber ekledik."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "5.)Çok fazla beklemeden alabilirsiniz. Mutlaka limonla servis etmenizi öneririm."),
      SizedBox(height:70)
      ],
    );
  }
}
