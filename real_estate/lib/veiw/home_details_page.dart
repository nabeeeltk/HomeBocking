import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_estate/widgets/image_container.dart';

class HomeDetailsPage extends StatelessWidget {
  const HomeDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: const Color.fromARGB(255, 2, 48, 85),
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: Icon(Icons.arrow_back_ios_new,size: 30,color: Colors.white,)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              
              height: 200,
              
              decoration:const  BoxDecoration(
                image: DecorationImage(image: AssetImage("image/hm1.jpeg"),fit: BoxFit.cover)
              ),
            ),
           const  SizedBox(height: 15,),
            const  ImageContainer(),
         const   Padding(
             padding: EdgeInsets.only(left:8.0),
             child: Text("Rouse Villa House",style: TextStyle(fontSize: 25,
             fontWeight: FontWeight.bold),),
           ),
            const Padding(
             padding:  EdgeInsets.only(left: 8),
             child: Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.",
             style: TextStyle(fontSize: 12,
             ),),
           ),
          const  SizedBox(height: 15,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            const  Padding(
               padding:  EdgeInsets.only(left:8.0),
               child: CircleAvatar(
                radius: 25,
               ),
             ),
            const  Text("Jhone Abrahm",style: TextStyle(fontSize: 25,
             fontWeight: FontWeight.bold),),
              Padding(
               padding:  EdgeInsets.only(left:8.0),
               child: CircleAvatar(
                child: IconButton(onPressed: (){}, icon: const Icon(Icons.call,size: 30,)),
                radius: 25,
               ),
             ),

              Padding(
               padding: const  EdgeInsets.only(left:8.0),
               child: CircleAvatar(
                radius: 25,
                child: IconButton(onPressed: (){}, icon: const Icon(Icons.message,size: 30,)),
               ),
             ),

             
           ],),

        const    SizedBox(height: 15,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                minWidth: 50,
                height: 40,
                color: Colors.black,
                child: const Text("₹ 150000",style: TextStyle(color: Colors.white),),
                onPressed: (){}),
                MaterialButton(
                color: Colors.black,
                child: const Text("BUY NOW",style: TextStyle(color: Colors.white),),
                onPressed: (){}),
            ],
           )
          ],
          
          

        ),
      ),
    );
  }
}