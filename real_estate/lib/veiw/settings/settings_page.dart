import 'package:flutter/material.dart';
import 'package:real_estate/utile/Constants.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        title:const  Text("Settings",style:TextStyle(color: Colors.white),),
        leading: IconButton(onPressed: () {
          
        }, icon:const  Icon(Icons.arrow_back_ios_new,size: 30,color: Colors.white,)),
      ),
      body: const  SingleChildScrollView(
        child: Column(
        children: [
           ListTile(
              title: Text("Jhone Abraham",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              subtitle: Text("Malappuram ,Kerala",style: TextStyle(fontSize: 18,)),
              trailing: CircleAvatar(
                radius: 30,
              ),
            ),
            Divider(),
            // ListView.builder(
            //   shrinkWrap: true,
            //   itemBuilder: (context, index) {
            //    return const  ListTile(
            //     title: Text("Notification"),
            //     trailing: Icon(Icons.notifications),
            //    );
            // },  )
          ],
        ),
      ),
    );
  }
}