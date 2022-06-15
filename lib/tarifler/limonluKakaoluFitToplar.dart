import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';

class LimonluKakaoluFitToplar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: LimonluKakaoluFitToplarTarif(),
      ),
      renk: Colors.white,
    );
  }
}

class LimonluKakaoluFitToplarTarif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TariflerIcerik(
          tariflerIcerikJpg: "LimonluVeKakaoluFitToplarYakindan",
          kisiSayisi: " ",
          pisirmeSuresi: "30 Dakika",
          tariflerAciklama:
              "Antrenmandan 1-2 saat önce kahveyle birlikte tüketebilmek için hafif ve lezzetli bir ara öğün önerisi! Kalori dengesi ve sporda hazımsızlık hissi yaşamamak için ikisinden birer tane yememiz yeterli.",
        ),
        Container(
          child: Text(
            "Limonlu Fit Top (65 Kalori):",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        TariflerMalzemeler(
            tariflerMalzeme: "6 Yemek Kaşığı Hindistan Cevizi Rendesi)"),
        TariflerMalzemeler(tariflerMalzeme: "3 Yemek Kaşığı Çiğ Badem"),
        TariflerMalzemeler(tariflerMalzeme: "2 Yemek Kaşığı Bal"),
        TariflerMalzemeler(tariflerMalzeme: "10 Damla Limon Suyu"),
        TariflerMalzemeler(
            tariflerMalzeme: "1 Çay Kaşığı limon Kabuğu Rendesi"),
        Container(
          child: Text("--Hazırlanışı:",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue)),
        ),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "1.)Bademleri blenderda küçük parçalar haline getirdikten sonra diğer malzemelerle karıştırıp şekil verelim."),
        SizedBox(height: 25),
        Container(
          child: Text("Malzemeler:",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.green)),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          child: Text(
            "Kakaolu Fit Top (72 Kalori):",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        TariflerMalzemeler(tariflerMalzeme: "3/4 Su Bardağı Doğranmış Fındık)"),
        TariflerMalzemeler(tariflerMalzeme: "10 İri Hurma"),
        TariflerMalzemeler(tariflerMalzeme: "1 Yemek Kaşığı Ham Kakao"),
        TariflerMalzemeler(tariflerMalzeme: "1 Tatlı Kaşığı Tahin"),
        Container(
          child: Text("--Hazırlanışı:",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue)),
        ),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "1.)Hurmaları 15-20 dk sıcak suda bekletip kabuklarını soyup çekirdeklerini çıkardıktan sonra blenderda püre haline getirelim."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "2.)Diğer malzemelerle karıştırıp şekil verelim."),
      ],
    );
  }
}
