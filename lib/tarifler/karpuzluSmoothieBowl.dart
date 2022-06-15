import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';

class KarpuzluSmoothie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: KarpuzluSmoothieTarif(),
      ),
      renk: Colors.white,
    );
  }
}

class KarpuzluSmoothieTarif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TariflerIcerik(
          tariflerIcerikJpg: "KarpuzluSmoothieBowlYakindan",
          kisiSayisi: "1",
          pisirmeSuresi: "15 Dakika",
          tariflerAciklama: "Çok severek yapıyorum, tarifi ekte",
        ),
        TariflerMalzemeler(tariflerMalzeme: "2 Donmuş Muz"),
        TariflerMalzemeler(tariflerMalzeme: "100 gr Donmuş Çilek"),
        TariflerMalzemeler(tariflerMalzeme: "1 Su Bardağı Karpuz"),
        TariflerMalzemeler(tariflerMalzeme: "Çilek"),
        TariflerMalzemeler(
            tariflerMalzeme: "1 Tatlı Kaşığı Şekersiz Hindistan Cevizi Ezmesi"),
        TariflerMalzemeler(tariflerMalzeme: "Topping"),
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
                "1.)Muz, çilek ve karpuzu kısa bir süre blenderdan geçiriyoruz."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "2.)Üzerine frenk üzümü, çilek ve şekersiz hindistan cevizi ezmesi ve topping ekliyoruz."),
      ],
    );
  }
}
