import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';

class Galette extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: GaletteTarif(),
      ),
      renk: Colors.white,
    );
  }
}

class GaletteTarif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TariflerIcerik(
          tariflerIcerikJpg: "GaletteYakindan",
          kisiSayisi: "6-8",
          pisirmeSuresi: "30-35 Dakika",
          tariflerAciklama:
              "En güzel meyvelerin mevsimi bitmeden son günlerinde değerlendirmek için güzel bir tarif!",
        ),
        Container(
          child: Text(
            "Hamuru İçin:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        TariflerMalzemeler(tariflerMalzeme: "1 Su Bardağı Yulaf unu)"),
        TariflerMalzemeler(
            tariflerMalzeme: "1/2 Su Bardağı Hindistan Cevizi Unu"),
        TariflerMalzemeler(tariflerMalzeme: "1 Yumurta (Oda Sıcaklığında)"),
        TariflerMalzemeler(tariflerMalzeme: "3 Yemek Kaşığı Soğuk Su"),
        TariflerMalzemeler(
            tariflerMalzeme: "2 Yemek Kaşığı Sıvı Hindistan Cevizi Yağı"),
        TariflerMalzemeler(
            tariflerMalzeme: "3 Yemek Kaşığı Hindistan Cevizi Şekeri"),
        Container(
          child: Text(
            "İçi İçin:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        TariflerMalzemeler(tariflerMalzeme: "1 Büyük Şeftali)"),
        TariflerMalzemeler(tariflerMalzeme: "2 Büyük Mürdüm Eriği"),
        TariflerMalzemeler(tariflerMalzeme: "2 Yemek Kaşığı Bal"),
        TariflerMalzemeler(tariflerMalzeme: "1 Çay Kaşığı Tarçın"),
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
                "1.)Kuru ve sıvı malzemeleri ayrı ayrı karıştırdıktan sonra birleştiriyoruz."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama: "2.)İyice karıştırıp yoğuruyoruz."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "3.)Streçleyip 1 saat buzdolabında bekletiyoruz."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "4.)Daha sonra ince bir hamur açıyoruz."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "5.)Meyvelerle sosu karıştırdıktan sonra 2 cm boşluk kalacak şekilde hamurun üzerine meyveleri dizip sosu gezdiriyoruz ve yanlardan kapatıyoruz."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "6.)170 derece fırında 30-35 dk pişirelim."),
      ],
    );
  }
}
