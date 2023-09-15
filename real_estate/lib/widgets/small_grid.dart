import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../veiw/home/home_details_page.dart';

class SmallGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container( // Wrap the GridView in a Container
      height: 300, // Set a fixed height or adjust as needed
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Adjust the number of columns as needed
        ),
        itemCount: 4, // Adjust the number of items as needed
        itemBuilder: (context, index) {
          // Replace this with the content for each grid item
          return InkWell(
            onTap: (){
              Get.to( const HomeDetailsPage());
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("image/hm1.jpeg"))
                      ),
                      
                    ),
                  ),
                  Text("Rose Villa",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("150000",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      CircleAvatar(
                        backgroundColor: Colors.orange,
                        child: IconButton(onPressed:() {
                      
                        }, icon: Icon(Icons.add)),
                      )
                     ],
                   ),
                 ],
              )
            ),
          );
        },
      ),
    );
  }
}
