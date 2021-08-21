import 'package:flutter/material.dart';
import 'package:radar_soft/login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "create an Account",
                    style: TextStyle(
                        fontFamily: "Pacifico",
                        fontSize: 15,
                        color: Colors.grey.shade700),
                  ),
                ],
              ),
              Column(
                children: [
                  inputFile(label: "Enter Username"),
                  inputFile(label: 'Enter Email'),
                  inputFile(label: "Enter Password", obscureText: true),
                  inputFile(label: "Confirm Password", obscureText: true)
                ],
              ),
              Container(
                child: MaterialButton(
                  onPressed: () {},
                  minWidth: double.infinity,
                  height: 60,
                  color: Colors.green,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "Sign up ",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Have an Account",
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(" Sign In",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  )
                ],
              )
            ],
          ),
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
