import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../veiw/home/home_details_page.dart';

class SmallGrid extends StatelessWidget {
const SmallGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.to(const HomeDetailsPage());
            },
            child: Card(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("image/hm1.jpeg"))),
                  ),
                ),
                const Text(
                  "Rose Villa",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "150000",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.add)),
                    )
                  ],
                ),
              ],
            )),
          );
        },
      ),
    );
  }
}
