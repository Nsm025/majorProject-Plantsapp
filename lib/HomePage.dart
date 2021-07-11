import 'package:authentification/comments.dart';
import 'package:authentification/screens/home/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User user;
  bool isloggedin = false;

  checkAuthentification() async {
    _auth.authStateChanges().listen((user) {
      if (user == null) {
        Navigator.of(context).pushReplacementNamed("start");
      }
    });
  }

  getUser() async {
    User firebaseUser = _auth.currentUser;
    await firebaseUser?.reload();
    firebaseUser = _auth.currentUser;

    if (firebaseUser != null) {
      setState(() {
        this.user = firebaseUser;
        this.isloggedin = true;
      });
    }
  }

  signout() async {
    _auth.signOut();
  }

  @override
  void initState() {
    super.initState();
    this.checkAuthentification();
    this.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: Column(
          children: [
            DrawerHeader(
              child: Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Hi There',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  height: 100,
                  color: Colors.black),
            ),
            ListTile(
              title: Text("Your Account"),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            ListTile(
              title: Text("Add Reviews"),
              leading: Icon(Icons.message_rounded),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatScreen()));
              },
            ),
            ListTile(
              title: Text("Log out"),
              leading: Icon(Icons.logout),
              onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Alert Message'),
                  content: const Text('Are you sure you want to logout?'),
                  actions: <Widget>[
                    ElevatedButton(
                      onPressed: () => signout(),
                      child: Text('Yes,Logout'),
                    ),
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
        appBar: AppBar(
          title: Text('DashBoard'),
        ),
        body: Container(
          child: !isloggedin
              ? CircularProgressIndicator()
              : Column(
                  children: <Widget>[
                    SizedBox(height: 35.0),
                    Container(
                      height: 400,
                      child: Image(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFy5jCp6a0YdIi_UT648ZSvu1qOLiAvANB1w&usqp=CAU"),
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      child: Text(
                        "Hello ${user.displayName} you are Logged in as ${user.email}",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
        ));
  }
}
