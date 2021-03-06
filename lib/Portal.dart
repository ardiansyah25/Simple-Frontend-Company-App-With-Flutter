import 'package:flutter/material.dart';
import 'package:submission/PortalMobile.dart';
import 'package:submission/PortalWeb.dart';

class Portal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 425) {
          return PortalWeb();
        } else {
          return PortalMobile();
        }
      }),
    );
  }
}
