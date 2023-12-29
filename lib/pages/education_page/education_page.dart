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
      mobile: _mobilePage(darkState),
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
                      ? AppColors.chatPageMainColor
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
      String url, String title, String duration, String subtitle,bool darkState) {
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
                color: darkState?AppColors.chatPageMainColor: AppColors.mainAppColorLight,
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
                  InkWell(
                    onTap: () {
                      launch(url);
                    },
                    child: Text(
                      title,
                      style: GoogleFonts.aBeeZee(
                        color: darkState?AppColors.mainTitleColorDark:AppColors.mainTitleColorLight,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(duration,
                      style: GoogleFonts.aBeeZee(
                        color: darkState?AppColors.flutterPageSubtitleColorDark:AppColors.flutterPageSubtitleColorLight,
                        fontSize: 15,
                      )),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    subtitle,
                    style: GoogleFonts.aBeeZee(
                      color:darkState?AppColors.flutterPageSubtitleColorDark:AppColors.flutterPageSubtitleColorLight,
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

  Widget _mobilePage(bool darkState) {
    return Container(
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Experience',
                style: GoogleFonts.bodoniModa(
                  fontSize: 50,
                  color: darkState?AppColors.mainTitleColorDark:AppColors.mainTitleColorLight,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                children: List.generate(UserData.workHistory.length, (index) {
                  List current = UserData.workHistory[index];
                  return  customStepper(
                      current[4],
                      current[0],
                      '${current[2]} - ${current[3]}',
                      current[1],darkState);
                }),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
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
              SizedBox(height: 50,),
              Column(
                children: List.generate(UserData.educationHistory.length, (index) {
                  List current = UserData.educationHistory[index];
                  return  customStepper(
                      current[4],
                      current[0],
                      '${current[2]} - ${current[3]}',
                      current[1],darkState);
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
