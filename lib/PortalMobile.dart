import 'package:flutter/material.dart';
import 'package:submission/DetailBerita.dart';
import 'package:submission/model/Berita.dart';
import 'package:submission/style/style.dart';

class PortalMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> berita = [];

    for (var i = 0; i < beritaList.length - 1; i++) {
      berita.add(
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailBerita(
                  berita: beritaList[i],
                );
              }));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    child: Image.asset(
                      beritaList[i].gambar,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      beritaList[i].judul,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return SingleChildScrollView(
      child: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  "PORTAL",
                  style: TextStyle(
                      fontFamily: 'Poppins', fontSize: 22, color: Colors.black),
                ),
                Text(
                  " SAMBU",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.indigo),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.radio,
                      color: Colors.white,
                      size: 60,
                    )),
                Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "100,9 FM | Offline",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        Text(
                          "RADIO SWARA SAMBU GROUP",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.red[900]),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Icon(
                  Icons.masks_rounded,
                  size: 50,
                  color: Colors.red[100],
                ),
                Text(
                  "COVID19 SAMBU",
                  style: TextStyle(
                      fontFamily: 'Poppins', fontSize: 18, color: Colors.white),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        SizedBox(height: 8),
                        Text(
                          "POSITIF",
                          style: Style().covidTextStyle,
                        ),
                        Text(
                          "1000",
                          style: Style().covidTextStyle,
                        ),
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        SizedBox(height: 8),
                        Text(
                          "SEMBUH",
                          style: Style().covidTextStyle,
                        ),
                        Text(
                          "2000",
                          style: Style().covidTextStyle,
                        ),
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        SizedBox(height: 8),
                        Text(
                          "MEINGGAL",
                          style: Style().covidTextStyle,
                        ),
                        Text(
                          "200",
                          style: Style().covidTextStyle,
                        ),
                      ],
                    ))
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsetsDirectional.only(start: 10, end: 10),
            child: Row(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Text(
                      "Berita",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    Text(
                      " Sambu",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                )),
                Expanded(
                    child: Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Lihat Semua",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Colors.indigo),
                    ),
                  ),
                )),
              ],
            ),
          ),
          // disini list berita
          Container(
            margin: EdgeInsetsDirectional.only(start: 10, end: 10),
            padding: EdgeInsetsDirectional.only(start: 10, end: 10),
            child: Row(
              children: berita,
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsetsDirectional.only(start: 10, end: 10),
            child: Row(
              children: [
                Text(
                  "Ada apa di",
                  style: TextStyle(
                      fontFamily: 'Poppins', fontSize: 16, color: Colors.black),
                ),
                Text(
                  " Sambu ?",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsetsDirectional.only(start: 10, end: 10),
            padding: EdgeInsetsDirectional.only(start: 10, end: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Column(
                          children: [
                            Icon(
                              Icons.fastfood_outlined,
                              size: 70,
                              color: Colors.indigo,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Kuliner",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Column(
                          children: [
                            Icon(
                              Icons.hotel_outlined,
                              size: 70,
                              color: Colors.indigo,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Penginapan",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Column(
                          children: [
                            Icon(
                              Icons.map_outlined,
                              size: 70,
                              color: Colors.indigo,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Wisata",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Column(
                          children: [
                            Icon(
                              Icons.real_estate_agent_outlined,
                              size: 70,
                              color: Colors.indigo,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Pemerintahan",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        child: Column(
                          children: [
                            Icon(
                              Icons.shopping_bag_outlined,
                              size: 70,
                              color: Colors.indigo,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Belanja",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Column(
                          children: [
                            Icon(
                              Icons.book_online_outlined,
                              size: 70,
                              color: Colors.indigo,
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Budaya",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
