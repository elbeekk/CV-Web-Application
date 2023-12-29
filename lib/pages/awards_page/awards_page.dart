import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:elbek/riverpod/all_providers.dart';
import 'package:elbek/utils/colors.dart';
import 'package:elbek/utils/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class AwardsPage extends ConsumerStatefulWidget {
  const AwardsPage({super.key});

  @override
  ConsumerState<AwardsPage> createState() => _Container5State();
}

class _Container5State extends ConsumerState<AwardsPage> {
  @override
  Widget build(BuildContext context) {
    final darkState = ref.watch(AppProvider.isDarkProvider);
    return ScreenTypeLayout(
      mobile: _desktopPage(darkState),
    );
  }

  Widget _desktopPage(bool darkState) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  colors: darkState
                      ? [
                          AppColors.flutterPageGradientColorDark1,
                          AppColors.mainBackgroundColorDark,
                        ]
                      : [
                    AppColors.mainBackgroundColorLight,
                    AppColors.mainBackgroundColorLight,

                  ])),
          child: Column(
            children: [
              Text(
                'Certificates & Diplomas',
                textAlign: TextAlign.center,
                style: GoogleFonts.bodoniModa(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: darkState
                        ? AppColors.mainTitleColorDark
                        : AppColors.mainTitleColorLight),
              ),
              const SizedBox(
                height: 50,
              ),
              CarouselSlider(
                items: [
                  /// pdp uni
                  Container(
                    width: 300,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 2,
                          color: darkState?AppColors.mainAppColorDark:Colors.grey.shade300),
                    ], color: darkState?AppColors.flutterPageGradientColorDark1:AppColors.mainBackgroundColorLight),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  'assets/pdp.jpeg',
                                  colorBlendMode:  darkState ? BlendMode.plus : BlendMode.dstOver,
                                  color: darkState?AppColors.mainAppColorDark:AppColors.mainBackgroundColorLight,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: SelectableText.rich(
                              TextSpan(
                                  text:
                                      """I won the prize of a laptop by taking the honorable""",
                                  style: GoogleFonts.aBeeZee(color: darkState?AppColors.mainTitleColorDark:AppColors.mainTitleColorLight),
                                  children: [
                                    TextSpan(
                                        text: ' 2nd ',
                                        style: GoogleFonts.aBeeZee(
                                            fontWeight: FontWeight.bold)),
                                    const TextSpan(
                                        text:
                                            'place in the gold league of the republic stage at the Mathematics Science Olympiad organized by '),
                                    TextSpan(
                                        text: '\nPDP University',
                                        style: GoogleFonts.aBeeZee(
                                          color: Colors.blue,decoration: TextDecoration.underline
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () => launch(
                                              'https://university.pdp.uz/en')),
                                    const TextSpan(
                                        text:
                                            ', which is one of the best IT universities in Tashkent.'),
                                  ]),
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              launch(
                                  'https://www.youtube.com/watch?v=VBpkKp6X99s&ab_channel=PDPUniversity');
                            },
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                elevation: 0,
                                backgroundColor: darkState?AppColors.mainAppColorDark:AppColors.mainBackgroundColorLight),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'View More',
                                  style: GoogleFonts.aBeeZee(
                                      fontSize: 15, color: Colors.blue),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Icon(
                                  Icons.open_in_new,
                                  size: 15,
                                  color: Colors.blue,
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  /// balatech
                  Container(
                    width: 300,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 2,
                          color: darkState?AppColors.mainAppColorDark:Colors.grey.shade300),
                    ], color: darkState?AppColors.flutterPageGradientColorDark1:AppColors.mainBackgroundColorLight),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/balatech.jpeg',
                            fit: BoxFit.cover,
                            colorBlendMode:  darkState ? BlendMode.plus : BlendMode.dstOver,
                            color: darkState?AppColors.mainAppColorDark:AppColors.mainAppColorLight,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: SelectableText.rich(
                              TextSpan(text: "I won the",
                                  style: GoogleFonts.aBeeZee(color: darkState?AppColors.mainTitleColorDark:AppColors.mainTitleColorLight),
                                  children: [
                                TextSpan(
                                    text: ' 3rd ',
                                    style: GoogleFonts.aBeeZee(
                                        fontWeight: FontWeight.bold)),
                                const TextSpan(
                                    text:
                                        'place in the first round of the international programming Olympiad between the 10th and 11th grades organized by '),
                                TextSpan(
                                    text: 'Balatech',
                                    style: GoogleFonts.aBeeZee(
                                      color: Colors.blue,decoration: TextDecoration.underline
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap =
                                          () => launch('http://balatech.org/')),
                                const TextSpan(
                                    text:
                                        ', a universal educational platform for learning mobile literacy in Russian and Kyrgyz languages.'),
                              ]),
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              launch(
                                  'https://it-park.uz/en/itpark/news/uzbekistan-took-second-place-at-the-balatech-international-olympiad');
                            },
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                elevation: 0,
                                backgroundColor: darkState?AppColors.mainAppColorDark:AppColors.mainBackgroundColorLight),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'View More',
                                  style: GoogleFonts.aBeeZee(
                                      fontSize: 15, color: Colors.blue),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Icon(
                                  Icons.open_in_new,
                                  size: 15,
                                  color: Colors.blue,
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  /// english
                  Container(
                    width: 300,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 2,
                          color: darkState?AppColors.mainAppColorDark:Colors.grey.shade300),
                    ], color: darkState?AppColors.flutterPageGradientColorDark1:AppColors.mainBackgroundColorLight),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/english.png',
                            fit: BoxFit.cover,
                            colorBlendMode: darkState ? BlendMode.plus : BlendMode.dstOver,
                            color: darkState?AppColors.mainAppColorDark:AppColors.mainAppColorLight,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: SelectableText.rich(
                              TextSpan(text: "I got ",
                                  style: GoogleFonts.aBeeZee(color: darkState?AppColors.mainTitleColorDark:AppColors.mainTitleColorLight),
                                  children: [
                                TextSpan(
                                    text: ' B2(59) ',
                                    style: GoogleFonts.aBeeZee(
                                        fontWeight: FontWeight.bold)),
                                const TextSpan(
                                    text: 'level of English proficiency in '),
                                TextSpan(
                                    text: 'multi-level',
                                    style: GoogleFonts.aBeeZee(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () => launch(
                                          'https://www.uab.cat/web/uab-languages-campus/certificates-exams/exams-description/english-b1-to-c1-1345821470654.html')),
                                const TextSpan(
                                    text:
                                        ' exam recognized only by Uzbekistan.'),
                              ]),
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              launch(
                                  'https://www.uzreport.news/society/uzbek-citizens-to-test-their-language-level-at-gtc');
                            },
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                elevation: 0,
                                backgroundColor: darkState?AppColors.mainAppColorDark:AppColors.mainBackgroundColorLight),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'View More',
                                  style: GoogleFonts.aBeeZee(
                                      fontSize: 15, color: Colors.blue),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Icon(
                                  Icons.open_in_new,
                                  size: 15,
                                  color: Colors.blue,
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                ],
                options: CarouselOptions(
                    height: 500,
                    viewportFraction: 330 / w!,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.1,
                    pauseAutoPlayOnTouch: true,
                    autoPlay: true,
                    pageSnapping: true,
                    autoPlayAnimationDuration: const Duration(seconds: 1)),
              )
            ],
          ),
        ),
        Container(
          height: 150,
        )
      ],
    );
  }
}
