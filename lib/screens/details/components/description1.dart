import 'package:authentification/constants.dart';
import 'package:authentification/screens/details/detail_screen.dart';
import 'package:flutter/material.dart';

class Description1 extends StatefulWidget {
  @override
  _Description1State createState() => _Description1State();
}

class _Description1State extends State<Description1> {
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
                image: AssetImage("assets/images/image_2.png"),
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
                      text: 'Magnolia',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black))
                ])),
            SizedBox(height: 10.0),
            Text(
              'Magnolia is a large genus of about 210 flowering plant species in the subfamily Magnolioideae of the family Magnoliaceae.',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              ' It is named after French botanist Pierre Magnol.',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Magnolia is an ancient genus.',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Appearing before bees evolved, the flowers are theorized to have evolved to encourage pollination by beetles.',
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
