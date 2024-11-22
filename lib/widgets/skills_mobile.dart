import 'package:flutter/material.dart';
import 'package:my_portfolioo/app/constants/skills.dart';
import 'package:my_portfolioo/utility/colors.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({
    super.key, required this.screenHeight,
  });
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: screenHeight/1.21
      ),
      child: Column(
        children: [
          for(int i=0; i<skillItems.length; i++)
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: CustomColor.bgLight2,
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                leading: Image.asset(skillItems[i]['img'], width: 26,),
                title: Text(skillItems[i]['title']),
              ),
            ),

        ],
      ),
    );
  }
}
