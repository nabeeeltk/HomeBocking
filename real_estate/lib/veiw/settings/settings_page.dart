import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/utile/Constants.dart';
import 'package:real_estate/veiw/Profile/profile_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: maincolor,
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: 30,
              color:maincolor,
            )),
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                 Get.to(const ProfilePage());
              },
              child:const  ListTile(
                title: Text(
                  "Jhone Abraham",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Malappuram ,Kerala",
                    style: TextStyle(
                      fontSize: 18,
                    )),
                trailing: CircleAvatar(
                  radius: 30,
                ),
              ),
            ),
           const  Divider(),
          const  ListTile(
            title: Text("Notification"),
            trailing: Icon(Icons.notifications,size: 25,),
           ),
          const Divider(),
             const ListTile(
            title: Text("Wallet"),
            trailing: Icon(Icons.wallet,size: 25,),
           ),
           const Divider(),
           const   ListTile(
            title: Text("About"),
            trailing: Icon(Icons.list,size: 25,),
           ),
           const Divider(),
          const   ListTile(
            title: Text("Help & Support"),
            trailing: Icon(Icons.help,size: 25,),
           ),
          const  Divider(),
           const  ListTile(
            title: Text("LogOut"),
            trailing: Icon(Icons.logout_outlined,size: 25,),
           ),
          const  Divider(),
          ],
        ),
      ),
    );
  }
}
