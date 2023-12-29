import 'dart:developer';
import 'package:elbek/pages/awards_page/awards_page.dart';
import 'package:elbek/pages/projects_page/projects_page.dart';
import 'package:elbek/pages/chat_page/chat_page.dart';
import 'package:elbek/pages/footer_page//footer_page.dart';
import 'package:elbek/riverpod/all_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:elbek/pages/home_page/home_page.dart';
import 'package:elbek/pages/flutter_page/flutter_page.dart';
import 'package:elbek/pages/biography_page/biography_page.dart';
import 'package:elbek/pages/education_page/education_page.dart';
import 'package:elbek/utils/colors.dart';
import 'package:elbek/utils/constants.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  final container1Key = GlobalKey();
  final container3Key = GlobalKey();
  final container4Key = GlobalKey();
  final container5Key = GlobalKey();
  final container6Key = GlobalKey();
  final container7Key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    final darkState = ref.watch(AppProvider.isDarkProvider);
    return Scaffold(
      backgroundColor: darkState
          ? AppColors.mainBackgroundColorDark
          : AppColors.mainBackgroundColorLight,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ScreenTypeLayout(
              mobile: _navBarMobile(darkState),
              desktop: _navBarDesktop(darkState),
              tablet: _navBarTablet(darkState),
            ),
            HomePage(
              key: container1Key,
              container7Key: container7Key,
            ),
            const FlutterPage(),
            Container3(
              key: container3Key,
            ),
            EducationPage(
              key: container4Key,
            ),
            AwardsPage(
              key: container5Key,
            ),
            ProjectsPage(
              key: container6Key,
            ),
            ChatPage(
              key: container7Key,
            ),
            const FooterPage(),
          ],
        ),
      ),
    );
  }

  Widget _navBarMobile(bool darkState) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            navLogo(darkState),
            PopupMenuButton(
              splashRadius: 25,
              icon: const Icon(Icons.menu),
              padding: const EdgeInsets.all(0),
              constraints: BoxConstraints(minWidth: w!),
              clipBehavior: Clip.none,
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    onTap: () async {
                      await Scrollable.ensureVisible(
                          container1Key.currentContext ?? context,
                          duration: const Duration(seconds: 1));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Home',
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () async {
                      await Scrollable.ensureVisible(
                          container3Key.currentContext ?? context,
                          duration: const Duration(seconds: 1));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Biography',
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () async {
                      await Scrollable.ensureVisible(
                          container4Key.currentContext ?? context,
                          duration: const Duration(seconds: 1));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Expertise',
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () async {
                      await Scrollable.ensureVisible(
                          container5Key.currentContext ?? context,
                          duration: const Duration(seconds: 1));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Awards',
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () async {
                      await Scrollable.ensureVisible(
                          container6Key.currentContext ?? context,
                          duration: const Duration(seconds: 1));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Projects',
                        ),
                      ],
                    ),
                  ),
                ];
              },
            )
          ],
        ),
      );

  Widget _navBarDesktop(bool darkState) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            navLogo(darkState),
            Row(
              children: [
                navButton('Home', container1Key, darkState),
                navButton('Biography', container3Key, darkState),
                navButton('Expertise', container4Key, darkState),
                navButton('Awards', container5Key, darkState),
                navButton('Projects', container6Key, darkState),
              ],
            ),
            SizedBox(
              height: 40,
              width: 120,
              child: ElevatedButton(
                onPressed: () async {
                  await Scrollable.ensureVisible(
                      container7Key.currentContext ?? context,
                      duration: const Duration(seconds: 2));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: darkState
                        ? AppColors.mainAppColorDark
                        : AppColors.mainAppColorLight,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                child: Text("LET'S TALK", style: GoogleFonts.akatab()),
              ),
            ),
          ],
        ),
      );

  Widget _navBarTablet(bool darkState) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 70,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            navLogo(darkState),
            Row(
              children: [
                navButton('Home', container1Key, darkState),
                navButton('Biography', container3Key, darkState),
                navButton('Expertise', container4Key, darkState),
                navButton('Awards', container5Key, darkState),
                navButton('Projects', container6Key, darkState),
              ],
            ),
            SizedBox(
              height: 40,
              width: 120,
              child: ElevatedButton(
                onPressed: () async {
                  await Scrollable.ensureVisible(
                      container7Key.currentContext ?? context,
                      duration: const Duration(seconds: 2));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.onprimary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0))),
                child: Text("LET'S TALK", style: GoogleFonts.akatab()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget navButton(String text, GlobalKey key1, bool darkState) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: TextButton(
          onPressed: () async {
            await Scrollable.ensureVisible(key1.currentContext ?? context,
                duration: const Duration(seconds: 1));
          },
          child: Text(
            text,
            style: TextStyle(
                color: darkState
                    ? AppColors.mainTitleColorDark
                    : AppColors.mainAppColorLight,
                fontSize: 18),
          ),
        ));
  }

  Widget navLogo(bool darkState) {
    return Row(
      children: [
        InkWell(
          
          borderRadius: BorderRadius.circular(100),
            onTap: () {
              ref.read(AppProvider.isDarkProvider.notifier).state = !darkState;
            },
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Icon(
                darkState ? Icons.light_mode_outlined : Icons.dark_mode_outlined,
                color: darkState
                    ? AppColors.chatPageMainColor
                    : AppColors.mainAppColorLight,
              ),
            )),
        InkWell(
          onTap: () {
            launch(
                "https://firebasestorage.googleapis.com/v0/b/telegram-bot-54d17.appspot.com/o/Mirzamakhmudov%20Elbek.pdf?alt=media&token=878f15fb-782c-4b7b-8e96-1136e7840a55");
          },
          child: Container(
            width: 130,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: GradientText(
              'Download CV',
              colors: darkState
                  ? [AppColors.chatPageMainColor, AppColors.mainAppColorDark]
                  : [Colors.red.shade800, Colors.red],
            ),
          ),
        ),
      ],
    );
  }
}
