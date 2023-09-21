import 'package:flutter/material.dart';
import 'package:real_estate/widgets/small_grid.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
             appBar: AppBar(
              leading:const  Icon(Icons.arrow_back,color: Colors.white,),
             ),
      body: const  Column(
        children: [
          SizedBox(
            height: 70,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search Your Faveraite",
                    suffixIcon: Icon(
                      Icons.search,
                      size: 30,
                    ),
                    fillColor: Colors.blueGrey,
                    filled: true,
                    border: OutlineInputBorder(borderSide: BorderSide.none)),
              ),
            ),
          ),
          Expanded(child: SmallGrid())
        ],
      ),
    );
  }
}