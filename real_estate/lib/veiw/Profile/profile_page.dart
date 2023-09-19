import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/utile/Constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: 100,
                  color: Colors.blueGrey,
                ),
              ),
            const   Expanded(
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: ' entername',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 16), // Adjust the spacing as needed
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter Adress',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
