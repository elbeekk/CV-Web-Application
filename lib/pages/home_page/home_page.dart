import 'package:elbek/riverpod/all_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:elbek/utils/colors.dart';
import 'package:elbek/utils/constants.dart';

class HomePage extends ConsumerStatefulWidget {
  final GlobalKey container7Key;

  const HomePage({super.key, required this.container7Key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final darkState = ref.watch(AppProvider.isDarkProvider);
    return ScreenTypeLayout(

      mobile: _mobileContainer(),
      desktop: _desktopContainer(darkState),
      tablet: _tabletContainer(),
    );
  }

  /// MOBILE
  Widget _mobileContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                SelectableText.rich(
                  TextSpan(text: "Hi, I’m ",children: [
                    TextSpan(
                      text: "Elbek Mirzamakhmudov",
                      style:
                          GoogleFonts.abhayaLibre(color: AppColors.onprimary),
                    ),
                    const TextSpan(text: '\na Mobile App (Flutter) developer.')
                  ]),
                  style: GoogleFonts.abhayaLibre(
                      fontSize: h! * 0.06, fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'I’m a Mobile App (Flutter) developer based in Tashkent and enjoy creating apps & websites. I love travelling, game & music.',
                  style: GoogleFonts.aBeeZee(
                    color: Colors.grey.shade600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 120,
                      child: ElevatedButton(
                        onPressed: () async {
                          await Scrollable.ensureVisible(
                              widget.container7Key.currentContext ?? context,
                              duration: const Duration(seconds: 2));
                        },
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(115, 40),
                            backgroundColor: AppColors.onprimary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0))),
                        child: Text("CONTACT ME", style: GoogleFonts.akatab()),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(1000)),
            child: Container(
              height: h! * 0.6,
              child: Image.asset('assets/elbek.jpg'),
            ),
          ),
        ],
      ),
    );
  }

  /// DESKTOP
  Widget _desktopContainer(
      bool darkState
      ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 11, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 650),
            width: w! * .4,
            child: Column(
              children: [
                SelectableText.rich(
                  TextSpan(text: "Hi, I’m ",style: GoogleFonts.abhayaLibre(color: darkState?AppColors.mainTitleColorDark:AppColors.mainTitleColorLight), children: [
                    TextSpan(
                      text: "Elbek Mirzamakhmudov",
                      style:
                          GoogleFonts.abhayaLibre(color:darkState?AppColors.chatPageMainColor:AppColors.mainAppColorLight),
                    ),
                    const TextSpan(text: '\na Flutter developer.')
                  ]),
                  style: GoogleFonts.abhayaLibre(
                      fontSize: w! / 30, fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'I live in Tashkent and enjoy creating apps & websites. I love travelling, game & music.',
                  style: GoogleFonts.aBeeZee(
                    color: darkState?AppColors.flutterPageSubtitleColorDark:AppColors.flutterPageSubtitleColorLight,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        await Scrollable.ensureVisible(
                            widget.container7Key.currentContext ?? context,
                            duration: const Duration(seconds: 2));
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(115, 40),
                          backgroundColor: darkState?AppColors.mainAppColorDark:AppColors.mainAppColorLight,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0))),
                      child: Text(
                        "CONTACT ME",
                        style: GoogleFonts.akatab(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 80,
          ),
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(1000)),
            child: Container(
              height: h! * 0.5,
              child: Image.asset('assets/elbek.jpg'),
            ),
          ),
        ],
      ),
    );
  }

  /// TABLET
  Widget _tabletContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: w! * 0.5,
            child: Column(
              children: [
                SelectableText.rich(
                  TextSpan(text: "Hi, I’m ", children: [
                    TextSpan(
                      text: "Elbek Mirzamakhmudov",
                      style:
                          GoogleFonts.abhayaLibre(color: AppColors.onprimary),
                    ),
                    const TextSpan(text: '\na Mobile App (Flutter) developer.')
                  ]),
                  style: GoogleFonts.abhayaLibre(
                      fontSize: w! * 0.06, fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'I’m a Mobile App (Flutter) developer based in Tashkent and enjoy creating apps & websites. I love travelling, game & music.',
                  style: GoogleFonts.aBeeZee(
                    color: Colors.grey.shade600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        await Scrollable.ensureVisible(
                            widget.container7Key.currentContext ?? context,
                            duration: const Duration(seconds: 2));
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(115, 40),
                          backgroundColor: AppColors.onprimary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0))),
                      child: Text(
                        "CONTACT ME",
                        style: GoogleFonts.akatab(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 80,
          ),
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(1000)),
            child: Container(
              height: h! * 0.4,
              constraints: BoxConstraints(minHeight: 400, maxWidth: w! * 0.3),
              child: Image.asset('assets/elbek.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
