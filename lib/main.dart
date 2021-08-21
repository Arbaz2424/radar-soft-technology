import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup_page.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Make your life easier with the help from Radar-Soft",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Pacifico", color: Colors.grey, fontSize: 20),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: Image(image: AssetImage("assets/logo.png")),
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  minWidth: double.infinity,
                  height: 60,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(50)),
                  child: Text("Log In",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  minWidth: double.infinity,
                  height: 60,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "Log Out",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
