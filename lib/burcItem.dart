import 'dart:ui';

import 'package:burclar/burc_detay.dart';
import 'package:burclar/model/Burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 15,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Burc_Detay(
                  secilenBurc: listelenenBurc,
                ),
              ));
            },
            leading: Image.asset(
              "images/" + listelenenBurc.burcKucukResim,
            ),
            title: Text(listelenenBurc.burcAdi),
            subtitle: Text(listelenenBurc.burcTarihi),
            trailing: Icon(Icons.forward),
          ),
        ),
      ),
    );
  }
}
