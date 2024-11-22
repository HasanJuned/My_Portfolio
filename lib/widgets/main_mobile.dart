import 'package:flutter/material.dart';
import 'package:my_portfolioo/utility/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
      height: screenHeight/2,
      constraints: const BoxConstraints(maxHeight: 560),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(colors: [
                  CustomColor.scaffoldBg,
                  CustomColor.scaffoldBg.withOpacity(0)
                ]).createShader(bounds);
              },
              blendMode: BlendMode.srcATop,
              child: Image.asset(
                'assets/images/my_pic.jpeg',
                width: screenWidth / 6,
              )),
          const SizedBox(height: 30,),
          const Text(
            "Hi,\nI'm Hasan\nA Flutter & Node.js Developer",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
                height: 1.5),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: double.maxFinite,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Get in touch'),
            ),
          ),
        ],
      ),
    );
  }
}
