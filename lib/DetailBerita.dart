import 'package:flutter/material.dart';
import 'package:submission/DetailBeritaMobile.dart';
import 'package:submission/DetailBeritaWeb.dart';
import 'package:submission/model/Berita.dart';

class DetailBerita extends StatelessWidget {
  final Berita berita;

  DetailBerita({required this.berita});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 425) {
        return DetailBeritaWeb(berita: berita);
      } else {
        return DetailBeritaMobile(berita: berita);
      }
    });
  }
}
