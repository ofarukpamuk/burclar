import 'package:flutter/material.dart';

import 'model/Burc.dart';

class Burc_Detay extends StatelessWidget {
  final Burc secilenBurc;
  const Burc_Detay({super.key, required this.secilenBurc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        // sayfaya tamamen scroll ozelliği kazandırmak için kullanılır.
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.pink,
            pinned: true, // apbar görünürlüğü ve kaydırılması
            expandedHeight: 250, // uygulama açıldıgında apbar büyüklüğü
            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenBurc.burcAdi),
              centerTitle: true,
              background: Image.asset(
                "images/" + secilenBurc.burcBuyukResim,
                fit: BoxFit.cover,
              ),
            ), // sliver apbarın ekran kaydırıldıgında boyutunun değişmesini sağlar
          ),
          SliverToBoxAdapter(
            key: key,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Text(secilenBurc.burcDetayi,
                    style: Theme.of(context).textTheme.subtitle1),
              ),
            ),
          )
        ],
      ),
    );
  }
}
