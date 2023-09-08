import 'package:flutter/material.dart';

class MainGrid extends StatelessWidget {
  const MainGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
        ),
        itemCount: 2, // Total number of items in the grid
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                'Item $index',
                style: TextStyle(color: Colors.white, fontSize: 24.0),
              ),
            ),
          );
        },
      );
  }
}