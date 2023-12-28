import "package:elbek/riverpod/all_providers.dart";
import "package:elbek/utils/user_data.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:google_fonts/google_fonts.dart";
import "package:elbek/utils/colors.dart";
import "package:url_launcher/url_launcher.dart";

class FlutterPage extends ConsumerStatefulWidget {
  const FlutterPage({super.key});

  @override
  ConsumerState<FlutterPage> createState() => _FlutterPageState();
}
class _FlutterPageState extends ConsumerState<FlutterPage> {
  @override
  Widget build(BuildContext context) {
    final darkState = ref.watch(AppProvider.isDarkProvider);
    return Container(
      margin: const EdgeInsets.only(top: 100),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: !darkState
            ? [
                AppColors.flutterPageGradientColorLight1,
                AppColors.flutterPageGradientColorLight2
              ]
            : [
                AppColors.flutterPageGradientColorDark1,
                AppColors.flutterPageGradientColorDark2,
              ],
        begin: Alignment.topRight,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          const Row(),
          Text(
            'Flutter Features',
            style: GoogleFonts.bodoniModa(
                fontSize: 35,
                color: darkState
                    ? AppColors.flutterPageTitleColorDark
                    : AppColors.flutterPageTitleColorLight,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 30,
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 30,
            runSpacing: 30,
            children: List.generate(UserData.flutterFeatures.length, (index) {
              final current = UserData.flutterFeatures[index];
              return featuresInfo(current[0], current[1], current[2], darkState);
            }),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              launch('https://flutter.dev/');
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(200, 50),
              elevation: 0,
              backgroundColor: darkState
                  ? AppColors.flutterPageGradientColorDark1
                  : AppColors.flutterPageGradientColorLight1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            child: Text(
              'VIEW MORE FEATURES',
              style: GoogleFonts.akatab(
                  color: darkState
                      ? AppColors.flutterPageTitleColorDark
                      : AppColors.flutterPageIconColorLight,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }

  Padding featuresInfo(
    IconData iconData,
    String title,
    String subtitle,
    bool darkState,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Icon(
            iconData,
            color: darkState
                ? AppColors.flutterPageIconColorDark
                : AppColors.flutterPageIconColorLight,
            size: 70,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.bodoniModa(
                    fontSize: 20,
                    color: darkState
                        ? AppColors.flutterPageTitleColorDark
                        : AppColors.flutterPageTitleColorLight,
                  ),
                ),
                Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.bodoniModa(
                      fontSize: 15, color: darkState?AppColors.flutterPageSubtitleColorDark:AppColors.flutterPageSubtitleColorLight),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
