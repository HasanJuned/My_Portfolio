import 'package:flutter/material.dart';
import 'package:my_portfolioo/app/constants/size.dart';
import 'package:my_portfolioo/widgets/contact_section.dart';
import 'package:my_portfolioo/widgets/drawer_mobile.dart';
import 'package:my_portfolioo/widgets/header_desktop.dart';
import 'package:my_portfolioo/widgets/header_mobile.dart';
import 'package:my_portfolioo/widgets/main_desktop.dart';
import 'package:my_portfolioo/widgets/main_mobile.dart';
import 'package:my_portfolioo/widgets/project_section.dart';
import 'package:my_portfolioo/widgets/skills_desktop.dart';
import 'package:my_portfolioo/widgets/skills_mobile.dart';
import 'package:my_portfolioo/utility/colors.dart';


class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navBarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : DrawerMobile(
                  onNavItemTap: (int navIndex) {
                    scaffoldKey.currentState?.closeEndDrawer();
                    scrollToSection(navIndex);

                  },
                ),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  key: navBarKeys.first,
                ),

                /// main section
                if (constraints.maxWidth >= kMinDesktopWidth)
                  HeaderDesktop(
                    onNavMenuTap: (int navIndex) {
                      scrollToSection(navIndex);
                    },
                  )
                else
                  HeaderMobile(
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                    onLogoTap: () {},
                  ),
                if (constraints.maxWidth >= kMinDesktopWidth)
                  MainDesktop(
                    screenSize: screenSize,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  )
                else
                  MainMobile(screenHeight: screenHeight, screenWidth: screenWidth),
                Container(
                  key: navBarKeys[1],
                  width: screenWidth,
                  color: CustomColor.bgLight1,
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 12,),
                      if (constraints.maxWidth >= kMedDesktopWidth)
                        const SkillsDesktop()
                      else
                        SkillsMobile(screenHeight: screenHeight)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                ProjectsSection(key: navBarKeys[2], screenWidth: screenWidth),
                ContactSection(
                    key: navBarKeys[3], getInputBorder: getInputBorder),
              ],
            ),
          ),
        );
      },
    );
  }

  OutlineInputBorder get getInputBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      return;
    }
    final key = navBarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(microseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
