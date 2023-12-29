import 'package:another_stepper/another_stepper.dart';
import 'package:elbek/riverpod/all_providers.dart';
import 'package:elbek/utils/user_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:elbek/utils/colors.dart';
import 'package:elbek/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class EducationPage extends ConsumerStatefulWidget {
  EducationPage({super.key});

  @override
  ConsumerState<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends ConsumerState<EducationPage> {
  Color stepperColor1 = AppColors.primary;
  Color stepperColor2 = AppColors.primary;
  Color stepperColor3 = AppColors.primary;

  @override
  Widget build(BuildContext context) {
    final darkState = ref.watch(AppProvider.isDarkProvider);
    return ScreenTypeLayout(
      mobile: MobileContainer4(),
      desktop: _desktopPage(darkState),
    );
  }

  Widget _desktopPage(bool darkState) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        end: Alignment.bottomRight,
        colors: darkState
            ? [
                AppColors.mainBackgroundColorDark,
                AppColors.flutterPageGradientColorDark1
              ]
            : [
                Colors.grey.shade50,
                AppColors.flutterPageGradientColorLight1,
              ],
        begin: Alignment.topRight,
      )),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        crossAxisAlignment: WrapCrossAlignment.start,
        runSpacing: 100,
        spacing: 50,
        children: [
          const Row(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Education',
                style: GoogleFonts.bodoniModa(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: darkState
                        ? AppColors.mainTitleColorDark
                        : AppColors.mainTitleColorLight),
              ),
              const SizedBox(
                height: 50,
              ),
              ...customTree(darkState, UserData.educationHistory),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Experience',
                style: GoogleFonts.bodoniModa(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: darkState
                        ? AppColors.mainTitleColorDark
                        : AppColors.mainTitleColorLight),
              ),
              const SizedBox(
                height: 50,
              ),
              ...customTree(darkState, UserData.workHistory),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> customTree(bool darkState, List list) {
    return List.generate(list.length, (index) {
      final current = list[index];
      return Container(
        constraints: const BoxConstraints(maxWidth: 500, maxHeight: 170),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.expand_circle_down_outlined,
                  color: darkState
                      ? AppColors.mainAppColorDark
                      : AppColors.mainAppColorLight,
                ),
                Expanded(
                    child: VerticalDivider(
                  color: Colors.grey.shade300,
                  width: 1.5,
                  endIndent: 0,
                  indent: 0,
                  thickness: 1,
                )),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 450),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      launch(current[4]);
                    },
                    child: Text(
                      current[0],
                      style: GoogleFonts.aBeeZee(
                        color: darkState
                            ? AppColors.mainTitleColorDark
                            : AppColors.mainTitleColorLight,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('${current[2]} - ${current[3]}',
                      style: GoogleFonts.aBeeZee(
                        color: darkState
                            ? AppColors.flutterPageSubtitleColorDark
                            : AppColors.flutterPageSubtitleColorLight,
                        fontSize: 15,
                      )),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    current[1],
                    style: GoogleFonts.aBeeZee(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }

  Container customStepper(
      String url, String title, String duration, String subtitle, Color color) {
    return Container(
      constraints: BoxConstraints(maxWidth: w!, maxHeight: 200),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.expand_circle_down_outlined,
                color: AppColors.onprimary,
              ),
              Expanded(
                  child: VerticalDivider(
                color: Colors.grey.shade300,
                width: 1.5,
                endIndent: 0,
                indent: 0,
                thickness: 1,
              )),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            constraints: BoxConstraints(maxWidth: w! * 0.8),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        color = AppColors.onprimary;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        color = AppColors.primary;
                      });
                    },
                    child: InkWell(
                      onTap: () {
                        launch(url);
                      },
                      child: Text(
                        title,
                        style: GoogleFonts.aBeeZee(
                          color: color,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(duration,
                      style: GoogleFonts.aBeeZee(
                        color: Colors.grey.shade600,
                        fontSize: 15,
                      )),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    subtitle,
                    style: GoogleFonts.aBeeZee(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget MobileContainer4() {
    return Container(
      color: AppColors.backColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Education',
                style: GoogleFonts.bodoniModa(
                    fontSize: 50, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  customStepper(
                      'https://piima.uz/en/page/presidential-schools',
                      'Presidential School in Jizzakh',
                      '2021 - 2023',
                      'The Presidential School is a specialized public educational institution whose activities are aimed at identifying and educating gifted children to train highly qualified specialists.',
                      stepperColor1),
                  customStepper(
                      'https://tsue.uz/en',
                      'Tashkent State University of Economics',
                      '2023 - Present',
                      'Tashkent State University of Economics is one of the largest higher education institutions in the field of economics in Uzbekistan and Central Asia.',
                      stepperColor2)
                ],
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Experience',
                style: GoogleFonts.bodoniModa(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  customStepper(
                      'https://githubit.com/',
                      'Mobile App Developer in Githubit',
                      "Jun 2023 - Present",
                      'A mobile app developer uses programming languages and development skills to create, test, and develop applications on mobile devices.',
                      stepperColor3)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
