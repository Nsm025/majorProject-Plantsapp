import 'package:authentification/constants.dart';
import 'package:authentification/screens/details/detail_screen.dart';
import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 35.0),
            Container(
              height: 400,
              child: Image(
                image: AssetImage("assets/images/image_1.png"),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20),
            RichText(
                text: TextSpan(
                    text: 'Plant Name- ',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                    children: <TextSpan>[
                  TextSpan(
                      text: 'Spruce',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black))
                ])),
            SizedBox(height: 10.0),
            Text(
              'A spruce is a tree of the genus Picea,',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              ' a genus of about 35 species of coniferous evergreen trees in the family Pinaceae,found in the northern temperate and boreal regions of the Earth.',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Picea is the sole genus in the subfamily Piceoideae.',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 30.0),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: kPrimaryColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ),
                );
              },
              child: Text(
                "Back",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
