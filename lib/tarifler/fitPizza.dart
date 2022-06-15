import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';

class FitPizza extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: FitPizzaTarif(),
      ),
      renk: Colors.white,
    );
  }
}

class FitPizzaTarif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TariflerIcerik(
          tariflerIcerikJpg: "FitPizzaYakindan",
          kisiSayisi: "4",
          pisirmeSuresi: "20 Dakika",
          tariflerAciklama:
              "Vaktimizin tamamını evde geçirmemiz gereken bu günlerde fiziksel aktivitenin de azalmasıyla sağlıklı beslenmek artık çok daha önemli! Başta çocuklar olmak üzere bu süreç birçok kişinin beslenme alışkanlıklarını değiştirmek için bir avantaj olmalı. Dışardan söylediğiniz tüm fast food yiyeceklerin sağlıklı versiyonunu evinizde yapabileceğinizi unutmayın.",
        ),
        TariflerMalzemeler(tariflerMalzeme: "Yumurta"),
        TariflerMalzemeler(tariflerMalzeme: "120 gr Karnabahar"),
        TariflerMalzemeler(tariflerMalzeme: "1 Orta Boy Mantar"),
        TariflerMalzemeler(tariflerMalzeme: "1 Yeşil Biber"),
        TariflerMalzemeler(tariflerMalzeme: "3 Cherry Domates"),
        TariflerMalzemeler(
            tariflerMalzeme: "30 gr Yağsız Tuzsuz Lor/Köy Peyniri"),
        TariflerMalzemeler(tariflerMalzeme: "2 Adet Light Zeytin"),
        TariflerMalzemeler(tariflerMalzeme: "Karabiber"),
        TariflerMalzemeler(tariflerMalzeme: "Kimyon"),
        TariflerMalzemeler(tariflerMalzeme: "Pul Biber"),
        TariflerMalzemeler(tariflerMalzeme: "Kekik"),
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
                "1.)Karnabahar 5 dakika haşlanır, rondodan geçirilir."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "2.)Baharatlar ve yumurta eklendikten sonra hamur haline getirilir."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "3.)Pizza tabanı gibi açılır ve önceden ısıtılmış 180 derece fırında 10-15 dakika pişirilir."),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Text("Sos İçin Malzemeler:",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue)),
        ),
        TariflerMalzemeler(tariflerMalzeme: "1 Orta Boy Domates"),
        TariflerMalzemeler(tariflerMalzeme: "1 Kapya Biber"),
        TariflerMalzemeler(tariflerMalzeme: "Fesleğen"),
        Container(
          child: Text("Hazırlanışı:",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green)),
        ),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "1.)Domates ve biber az su ile pişirilip, blenderdan geçirilir."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "2.)Fırından çıkan pizza tabanına yayılır."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "3.)Malzemeler eklenip, baharatlarla çeşnilendirilip 200 derece fırında 5 dakika daha pişirilir."),
      ],
    );
  }
}
