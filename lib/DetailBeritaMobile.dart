import 'package:flutter/material.dart';
import 'package:submission/FavoriteButton.dart';
import 'package:submission/model/Berita.dart';

class DetailBeritaMobile extends StatefulWidget {
  final Berita berita;
  DetailBeritaMobile({required this.berita});
  @override
  _DetailBeritaMobileState createState() => _DetailBeritaMobileState();
}

class _DetailBeritaMobileState extends State<DetailBeritaMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      child: Image.asset(widget.berita.gambar),
                      borderRadius: BorderRadius.circular(0),
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
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    widget.berita.judul,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    widget.berita.deskripsi,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
