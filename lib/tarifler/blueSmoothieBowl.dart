import 'package:flutter/material.dart';
import 'package:healthylifecoach/sabitler.dart';

class BlueSmoothieBowl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialAppp(
      bodyKismi: titleYazilari(
        titleKismi: BlueSmoothieBowlTarif(),
      ),
      renk: Colors.white,
    );
  }
}

class BlueSmoothieBowlTarif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TariflerIcerik(
          tariflerIcerikJpg: "BlueSmoothieBowlYakindan",
          kisiSayisi: "1",
          pisirmeSuresi: "15 Dakika",
          tariflerAciklama:
              "Fotoğrafa bakınca ne kadar güzel görünse de hazırlarken blenderla biraz sorun yaşamanız mümkün. Sıcaktan hemen erise de en çok bu kıvamının güzel olduğunu düşünüyorum.",
        ),
        TariflerMalzemeler(tariflerMalzeme: "3 Donmuş Muz"),
        TariflerMalzemeler(tariflerMalzeme: "1/2 Çay Bardağı Badem Sütü"),
        TariflerMalzemeler(tariflerMalzeme: "1 Tatlı Kaşığı Bal"),
        TariflerMalzemeler(
            tariflerMalzeme: "1 Tatlı Kaşığı Hindistan Cevizi Ezmesi"),
        TariflerMalzemeler(
            tariflerMalzeme:
                "1 Tatlı Kaşığı Blue Spirulina(Unicornsuperfoods)"),
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
                "1.)Donmuş muz, badem sütü, bal, hindistan cevizi ezmesi ve blue spirulinayı kıvam alana kadar (fazla eritmeden) blenderdan geçirdik."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "2.)Daha sonra donmuş yaban mersini ve hindistan cevizi cipsiyle süsledik."),
        tariflerHazirlanisContainer(
            tariflerHazirlanisAciklama:
                "3.)İsteğe bağlı olarak 1 ölçek vanilyalı protein tozu ekleyebilirsiniz. Başka aroma kullanmayalım baya kötü olabilir."),
      ],
    );
  }
}
