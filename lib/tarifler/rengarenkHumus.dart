import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';

class RengarenkHumus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: RengarenkHumusTarif(),
      ),
      renk: Colors.white,
    );
  }
}

class RengarenkHumusTarif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TariflerIcerik(
          tariflerIcerikJpg: "RengarenkHumusYakindan",
          kisiSayisi: "1-2 Kişi",
          pisirmeSuresi: "30 Dakika",
          tariflerAciklama: "Çok sevdiğim bir humus üçlemesi.",
        ),
        TariflerMalzemeler(tariflerMalzeme: "150 gr Haşlanmış Nohut"),
        TariflerMalzemeler(tariflerMalzeme: "2 Yemek Kaşığı Tahin"),
        TariflerMalzemeler(tariflerMalzeme: "1/4 Çay Bardağı Ilık Su"),
        TariflerMalzemeler(tariflerMalzeme: "1 Silme Çay Kaşığı Kimyon"),
        TariflerMalzemeler(tariflerMalzeme: "Tuz ve Karabiber"),
        TariflerMalzemeler(
            tariflerMalzeme:
                "Yeşil İçin 1 Su Bardağı Dolusu Temizlenmiş Ispanak"),
        TariflerMalzemeler(tariflerMalzeme: "Sarı İçin 1 Çay Kaşığı Zerdeçal"),
        TariflerMalzemeler(tariflerMalzeme: "Pembe İçin 1/2 Haşlanmış Pancar"),
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
                "Tüm malzemeleri blenderdan geçirip kendi damak tadınıza veya zevkinize göre malzemelerin miktarını değiştirebilirsiniz."),
      SizedBox(height:70)],
    );
  }
}
