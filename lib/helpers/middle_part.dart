import 'package:flutter/material.dart';

class MiddleHelpers extends ChangeNotifier {
  Widget favText() {
    return RichText(
      text: TextSpan(
          text: 'Favourite',
          style: TextStyle(
            shadows: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 1.0,
              ),
            ],
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 38.0,
          ),
          children: <TextSpan>[
            TextSpan(
              text: ' dishes?',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            )
          ]),
    );
  }
}
