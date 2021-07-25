import 'package:flutter/material.dart';
import 'package:submission/FavoriteButton.dart';
import 'package:submission/model/Berita.dart';

class DetailBeritaWeb extends StatefulWidget {
  final Berita berita;
  DetailBeritaWeb({required this.berita});
  @override
  _DetailBeritaWebState createState() => _DetailBeritaWebState();
}

class _DetailBeritaWebState extends State<DetailBeritaWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          child: Center(
            child: Container(
              width: 1000,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        child: Image.asset(widget.berita.gambar),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(Icons.arrow_back),
                                    color: Colors.white,
                                  )),
                              FavoriteButton(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    widget.berita.judul,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    widget.berita.deskripsi,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
