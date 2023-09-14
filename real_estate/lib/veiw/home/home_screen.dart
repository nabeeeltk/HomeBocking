import 'package:flutter/material.dart';
import 'package:real_estate/widgets/small_grid.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
     
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              const SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                
                  children: [
                  const   Icon(Icons.place),
                   Text("Malappuram",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                  ],
                ),
              ),

           const  Padding(
              padding:  EdgeInsets.all(8.0),
              child:    Text("Good Mornig..!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 27, 87, 136)),),
            ),

       const SizedBox(
          height: 70,
          child:   Padding(
              padding:  EdgeInsets.all(8.0),
              child:    TextField(
                 
                  decoration: InputDecoration(
                    hintText: "Search Your Faveraite",
                    suffixIcon: Icon(Icons.search,size: 30,),
                    fillColor: Colors.blueGrey,
                    filled: true,
                     border: OutlineInputBorder(borderSide: BorderSide.none)
                  ),
                  
                ),
            ),
        ),

          Card( 
            
            color: Colors.black,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10),
                image:const  DecorationImage(image: AssetImage("image/home1.jpg"),fit: BoxFit.cover,
                )
              ),
            
            ),
          ),
       const  Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Populer",style: TextStyle(fontSize: 18),),
                 Text("view all",style: TextStyle(fontSize: 18),)
              ],
            ),
          ),
           SmallGrid()
          ],
        ),
      ),
    );
  }
}