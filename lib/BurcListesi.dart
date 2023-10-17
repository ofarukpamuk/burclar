import 'package:burclar/burcItem.dart';
import 'package:burclar/data/strings.dart';
import 'package:flutter/material.dart';

import 'model/Burc.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;
  BurcListesi() {
    super.key;
    tumBurclar = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burçlar listesi"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: tumBurclar.length, // kaç tane eleman olduğunu girdik
          itemBuilder: (BuildContext context, int index) {
            return BurcItem(
              listelenenBurc: tumBurclar[index],
            );
          },
        ),
      ),
    );
  }
  // ayrıyeten fonksiyona aldık ve constructor içerisine yazdık bu seyade bu sınıf mıras alındıgı zaman bu metod listeyi dolduracak

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];

    for (int i = 0; i < 12; i++) {
      String ad = Strings.BURC_ADLARI[i];
      String tarih = Strings.BURC_TARIHLERI[i];
      String detay = Strings.BURC_GENEL_OZELLIKLERI[i];
      String kResim = Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png";
      String bResim =
          Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk${i + 1}.png";
      Burc b1 = Burc(ad, tarih, detay, kResim, bResim);
      gecici.add(b1);
    }
    return gecici;
  }
}
