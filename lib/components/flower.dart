import 'package:authentification/constants.dart';
import 'package:authentification/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class FlowerPage extends StatefulWidget {
  @override
  _FlowerPageState createState() => _FlowerPageState();
}

class _FlowerPageState extends State<FlowerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 35.0),
              RichText(
                  text: TextSpan(
                      text: 'Extinct Plants – ',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      children: <TextSpan>[
                    TextSpan(
                        text: 'Top 5 Plants That Are Now Just a History',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))
                  ])),
              SizedBox(height: 10.0),
              Text(
                '1. Lepidodendron',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 400,
                child: Image(
                  image: NetworkImage(
                      "https://blog.nurserylive.com/wp-content/uploads/2016/08/gallery_3786_1039_14780.jpg"),
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'Also known as Scale tree, Lepidodendron was a part of the coral forest area. The name Lepidodendron comes from the Greek lepido, scale, and dendron, tree. It was a giant herb that grew up to 100 feet sometimes. The branches were conical in shape. They did not have seeds. Instead, they reproduced through Spores. By the end of the Mesozoic era, these plants died out.',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 20),
              Text(
                '2. Calamites',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 400,
                child: Image(
                  image: NetworkImage(
                      "https://blog.nurserylive.com/wp-content/uploads/2016/08/81967342632257333.jpg"),
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'Calamites were medium sized trees that grew in the Carboniferous era. They had hollow stems, and the leaves and the branches were in whorls. They also reproduced through the formation of spores.',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 20),
              Text(
                '3. Archaefructus',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 400,
                child: Image(
                  image: NetworkImage(
                      "https://blog.nurserylive.com/wp-content/uploads/2016/08/92751924039934353.jpg"),
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'Archaefructus are considered to be one of the oldest flowering plants. They belonged to the  Cretaceous age and were densely available in the northern regions of China. These flowering plants, however, lacked sepals or petals, and their reproductive organs were based on the stem of the plant.',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 20),
              Text(
                '4. Cooksonia',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 400,
                child: Image(
                  image: NetworkImage(
                      "https://blog.nurserylive.com/wp-content/uploads/2016/08/Cooksonia_pertoni-e1471385475582.png"),
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'Cooksonia were primarily land plants known to have existed on earth about 425 million years ago. They thrived in the present regions of Australia and Britain. They were small and lacked leaves, flowers and roots. They only had slender stalks.',
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 20),
              Text(
                '5. Rhynia',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 400,
                child: Image(
                  image: NetworkImage(
                      "https://blog.nurserylive.com/wp-content/uploads/2016/08/Rhynia_reconstruction-e1471385665178.jpg"),
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'Rhynia were vascular plants that existed hundreds of years ago and belonged to the bryophytes category of plants. They were bisexual in nature and grew close to the other vascular plants.',
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
                      builder: (context) => HomeScreen(),
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
      ),
    );
  }
}
