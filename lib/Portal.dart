import 'package:flutter/material.dart';

class Portal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                borderRadius: BorderRadius.circular(5), color: Colors.green),
            margin: EdgeInsets.all(5),
            height: 100,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.radio,
                      color: Colors.white,
                      size: 50,
                    )),
                Expanded(
                    flex: 4,
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
        ],
      )),
    );
  }
}
