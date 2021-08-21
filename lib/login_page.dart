import 'package:flutter/material.dart';
import 'package:radar_soft/signup_page.dart';
import 'home_page.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 20,
              color: Colors.black,
            )),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Login",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Login to your Account",
                      style: TextStyle(
                          fontFamily: "Pacifico",
                          fontSize: 18,
                          color: Colors.grey.shade700),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      inputFile(label: "Enter your userName/Email"),
                      inputFile(label: "Password", obscureText: true)
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    padding: EdgeInsets.only(top: 30, left: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      // border: Border(
                      //     bottom: BorderSide(color: Colors.black),
                      //     top: BorderSide(color: Colors.black),
                      //     left: BorderSide(color: Colors.black),
                      //     right: BorderSide(color: Colors.black))
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      minWidth: double.infinity,
                      height: 60,
                      color: Colors.green,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an Account",
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                      },
                      child: Text(" Sign Up",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    )
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}

Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black),
      ),
      SizedBox(height: 5),
      TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12)))),
      SizedBox(
        height: 20,
      )
    ],
  );
}
