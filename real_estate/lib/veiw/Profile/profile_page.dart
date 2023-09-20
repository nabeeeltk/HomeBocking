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
         const  SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){},
                  child: Container(
                    height: 150,
                    width: 100,
                   decoration: const BoxDecoration(
                    border: Border.fromBorderSide(BorderSide()),
                    image: DecorationImage(image: AssetImage("image/profileimg.png"),fit: BoxFit.cover)
                   ),
                  ),
                ),
              ),
            const   Expanded(
                child: Column(
                  children: [
                     Padding(
                      padding: EdgeInsets.only(right:6.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter Name',
                          border: OutlineInputBorder(
                            
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                    Padding(
                      padding: EdgeInsets.only(right:6.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter Adress',
                          border: OutlineInputBorder(
                           
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

        const   SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.only(left:18.0,right: 18),
            child: MaterialButton(
              minWidth: double.infinity,
              height: 50,
              color: maincolor,
              child:const  Text("Save",style: TextStyle(fontSize: 20,color: Colors.white),),
              onPressed: (){}),
          )

        ],
      ),
    );
  }
}
