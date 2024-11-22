import 'package:flutter/material.dart';
import 'package:my_portfolioo/utility/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({
    super.key,
    required this.screenSize,
    required this.screenWidth,
    required this.screenHeight,
  });

  final Size screenSize;
  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight/1.2,
      constraints: const BoxConstraints(maxHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Hi,\nI'm Hasan\nA Flutter & Node.js Developer", style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                  height: 1.5
              ),),
              const SizedBox(height: 15,),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Get in touch'),
                ),
              ),
            ],
          ),
          Image.asset('assets/images/my_pic.jpeg', width: screenWidth/6,)
        ],
      ),
    );
  }
}
