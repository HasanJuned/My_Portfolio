import 'package:flutter/material.dart';
import 'package:my_portfolioo/app/constants/skills.dart';
import 'package:my_portfolioo/utility/colors.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 70,
      runSpacing: 70,
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
                width: 300,
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
                width: 300,
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
            const SizedBox(height: 8,),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: Wrap(
                spacing: 5,
                runSpacing: 5,
                children: [

                  for (int i = 0; i < skillItems.length; i++)
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: CustomColor.scaffoldBg,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        leading: Image.asset(
                          skillItems[i]['img'],
                          width: 26,
                        ),
                        title: Text(
                          skillItems[i]['title'],
                          style: const TextStyle(color: CustomColor.whitePrimary),
                        ),
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
