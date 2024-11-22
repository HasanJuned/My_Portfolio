import 'package:flutter/material.dart';
import 'package:my_portfolioo/utility/colors.dart';
import 'package:my_portfolioo/utility/project_utils.dart';
import 'dart:js' as js;

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.projectDetails,
  });

  final ProjectDetails projectDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 300,
      width: 290,
      decoration: BoxDecoration(
          color: CustomColor.bgLight2, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(projectDetails.image,
              height: 140, width: 250, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              projectDetails.title,
              style: const TextStyle(
                  fontWeight: FontWeight.w600, color: CustomColor.whitePrimary),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              projectDetails.subtitle,
              style: const TextStyle(
                  fontSize: 10, color: CustomColor.whiteSecondary),
            ),
          ),
          const Spacer(),
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                const Text(
                  'Available on ',
                  style: const TextStyle(
                      color: CustomColor.yellowSecondary, fontSize: 10),
                ),
                const Spacer(),
                if (projectDetails.gitLink != null)
                  GestureDetector(
                    onTap: () {
                      js.context.callMethod('open', [projectDetails.gitLink]);
                    },
                    child: Image.asset(
                      'assets/images/github.png',
                      width: 19,
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
