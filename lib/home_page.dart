import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radar Soft Technology"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Congratulations your successeflully Login here",
              style: TextStyle(fontSize: 50),
            )
          ],
        ),
      ),
    );
  }
}
