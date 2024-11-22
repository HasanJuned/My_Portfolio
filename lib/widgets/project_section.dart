import 'package:flutter/material.dart';
import 'package:my_portfolioo/widgets/project_card.dart';
import 'package:my_portfolioo/utility/colors.dart';
import 'package:my_portfolioo/utility/project_utils.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Center(
            child: Text('Projects', style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary
            ),),
          ),
          const SizedBox(height: 20,),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                  maxWidth: 950
              ),
              child: Wrap(
                spacing: 25,
                runSpacing: 25,
                children: [
                  for(int i=0; i<projects.length; i++)
                    ProjectCard(projectDetails: projects[i],),
                ],
              ),
            ),
          )

        ],
      ),

    );
  }
}
