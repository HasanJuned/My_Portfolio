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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 700),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Work Experience',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary),
              ),
              const SizedBox(height: 8,),
              Container(
                width: 400,
                decoration: BoxDecoration(
                  color: CustomColor.scaffoldBg,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const ListTile(
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  leading: Icon(
                    Icons.work_history_outlined,
                    size: 26,
                  ),
                  title: Text(
                    'Teaching Assistant of Flutter\nOstad\n(Oct 2024 - Present)',
                    style: TextStyle(color: CustomColor.whitePrimary),
                  ),
                ),
              ),
              const SizedBox(height: 4,),
              Container(
                width: 400,
                decoration: BoxDecoration(
                  color: CustomColor.scaffoldBg,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const ListTile(
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  leading: Icon(
                    Icons.work_history_outlined,
                    size: 26,
                  ),
                  title: Text(
                    'Support Instructor of Flutter\nOstad\n(Aug,2023 - Oct 2024)',
                    style: TextStyle(color: CustomColor.whitePrimary),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Skills',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 550
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
            ),
          ],
        ),
      ],
    );
  }
}
