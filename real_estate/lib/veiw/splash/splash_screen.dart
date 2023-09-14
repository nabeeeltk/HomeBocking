import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:real_estate/veiw/auth/signup_screen.dart';
import 'package:real_estate/widgets/root_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
      Future.delayed(Duration(seconds: 4), () {
        return Get.to(RootPage());
         
    });
    return const Scaffold(
      body: Center( // Center the contents of the Scaffold
        child: SingleChildScrollView(
          child: Column(
            // Center the Column's content horizontally
            children: [
              Image(
                image: AssetImage("image/homeHarburlogo.png"),
                width: 250,
                height: 250,
              ),
            
              SizedBox(
                height: 50,
                child: LoadingIndicator(
                  indicatorType: Indicator.ballBeat,
                  colors: [
                    Colors.black,
                    Color.fromARGB(255, 2, 48, 85),
                  ],
                  strokeWidth: 0,
                
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
