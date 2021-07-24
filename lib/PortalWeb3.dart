import 'package:flutter/material.dart';
import 'package:submission/DetailBerita.dart';

class PortalWeb3 extends StatelessWidget {
  var covidTextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(5),
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
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.radio,
                      color: Colors.white,
                      size: 80,
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
                              fontSize: 30,
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
            margin: EdgeInsets.all(5),
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
                        flex: 1,
                        child: Column(
                          children: [
                            SizedBox(height: 8),
                            Text(
                              "POSITIF",
                              style: covidTextStyle,
                            ),
                            Text(
                              "1000",
                              style: covidTextStyle,
                            ),
                          ],
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            SizedBox(height: 8),
                            Text(
                              "SEMBUH",
                              style: covidTextStyle,
                            ),
                            Text(
                              "2000",
                              style: covidTextStyle,
                            ),
                          ],
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            SizedBox(height: 8),
                            Text(
                              "MEINGGAL",
                              style: covidTextStyle,
                            ),
                            Text(
                              "200",
                              style: covidTextStyle,
                            ),
                          ],
                        ))
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
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
                Container(
                    alignment: Alignment.centerRight,
                    child: Expanded(
                        child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Lihat Semua",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: Colors.indigo),
                      ),
                    ))),
              ],
            ),
          ),
          // disini list berita
          Container(
            margin: EdgeInsets.all(5),
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ClipRRect(
                          child: Image.asset('images/1.jpg'),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        SizedBox(height: 8),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Departemen Pembelian Sambu Group sebagai Ujung Tombak Bisnis Perusahaan',
                            style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ),
                  flex: 1,
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.all(5),
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
            margin: EdgeInsets.all(5),
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
                      flex: 1,
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
                      flex: 1,
                    ),
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
                      flex: 1,
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
                      flex: 1,
                    ),
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
                      flex: 1,
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
                      flex: 1,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
