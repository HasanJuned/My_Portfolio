import 'package:flutter/material.dart';
import 'package:my_portfolioo/app/constants/skills.dart';
import 'package:my_portfolioo/utility/colors.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
              maxWidth: 700
          ),
          child: Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              for(int i=0; i<skillItems.length; i++)
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                    color: CustomColor.bgLight2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10
                    ),
                    leading: Image.asset(skillItems[i]['img'], width: 26,),
                    title: Text(skillItems[i]['title']),
                  ),
                ),

            ],
          ),
        ),

      ],
    );
  }
}
