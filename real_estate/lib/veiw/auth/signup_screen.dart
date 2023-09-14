import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),

            Padding(
              padding:  EdgeInsets.only(left:8.0),
              child: Text("Welcome to",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.only(left:8.0),
              child: Text(" HomeHarbor",
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 2, 48, 85)),),
            ),
               SizedBox(height: 25,),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder()
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder()
                ),
              ),
            ),
              Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder()
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}