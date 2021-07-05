import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//rich text whenever we have several sentences to write in different formats

class Headers extends ChangeNotifier {
  Widget appBar(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(FontAwesomeIcons.userAlt),
              onPressed: () {},
            ),
            Row(
              children: [
                Icon(FontAwesomeIcons.locationArrow),
                Text(
                  'City Hill View, New Delhi',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ],
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  Widget headerText() {
    return Container(
      padding: EdgeInsets.only(top: 20.0, left: 1.0),
      constraints: BoxConstraints(
        maxWidth: 300.0,
        maxHeight: 250.0,
      ),
      child: RichText(
        text: TextSpan(
            text: 'What would you like to ',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black,
              fontSize: 28.0,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'have today?',
                style: TextStyle(
                  fontSize: 38.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              )
            ]),
      ),
    );
  }

  Widget headerMenu(BuildContext context) {
    bool _hasBeenPressed = false;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                //color: _hasBeenPressed ? Colors.teal[200] : Colors.white,
                color: Colors.teal[200],
              ),
              height: 40.0,
              width: 100.0,
              child: Center(
                child: Text(
                  'ALL Food',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                //color: _hasBeenPressed ? Colors.teal[200] : Colors.white,
                color: Colors.teal[200],
              ),
              height: 40.0,
              width: 100.0,
              child: Center(
                child: Text(
                  'Pizza',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                //color: _hasBeenPressed ? Colors.teal[200] : Colors.white,
                color: Colors.teal[200],
              ),
              height: 40.0,
              width: 100.0,
              child: Center(
                child: Text(
                  'Pasta',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
