import 'package:authentification/constants.dart';
import 'package:authentification/screens/details/components/description1.dart';
import 'package:authentification/screens/details/components/image_and_icon.dart';
import 'package:authentification/screens/details/components/razorpay1.dart';
import 'package:flutter/material.dart';
import 'image_and_icon.dart';
import 'title_and_price.dart';

class Body1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(title: "Magnolia", country: "India", price: 180),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyApp1()));
                  },
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Description1()));
                  },
                  child: Text("Description"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
