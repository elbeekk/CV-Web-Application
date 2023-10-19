import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:elbek/utils/colors.dart';
import 'package:elbek/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container2State();
}

class _Container2State extends State<Container3> {
  Color color1 = AppColors.primary;
  Color color2 = AppColors.primary;
  Color color3 = AppColors.primary;
  Color color4 = AppColors.primary;
  Color color5 = AppColors.primary;
  Color color6 = AppColors.primary;


  launchMaps() async {
    String googleUrl =
        'comgooglemaps://?center=${41.28054373614124},${69.21323979009713}';
    String appleUrl =
        'https://maps.apple.com/?sll=${41.28054373614124},${69.21323979009713}';
    if (await canLaunch("comgooglemaps://")) {
      print('launching com googleUrl');
      await launch(googleUrl);
    } else if (await canLaunch(appleUrl)) {
      print('launching apple url');
      await launch(appleUrl);
    } else {
      throw 'Could not launch url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer3(),
      desktop: DesktopContainer3(),
      tablet: TabletContainer3(),
    );
  }
  // ================= DESKTOP =================
  Widget DesktopContainer3() {
    return Container(
      width: w,
      margin: const EdgeInsets.symmetric(vertical: 50),
      child: Row(
        children: [
          Container(
              width: w!/2,
              child: Image.asset('assets/elbek1.jpg')),
          Container(
            width: w!/2,
              child: Padding(
            padding: const EdgeInsets.only(left: 70, right: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Biography',
                  style: GoogleFonts.bodoniModa(
                      fontSize: 50, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  """Talented UI/UX designer with 8+ years of experience, seeking to elevate work at ModelTheme, Inc. As Lead UI/UX Head completed project before dead line. ittis augue, id sollicitudin tristique ut.\n\n\nGain visiblity & authorities with a unique mix of content strategy & designing I seek to understand your customer & the problems they need to solve. Then persusion science and marketng strategy to create kind content that rapidly drives traffic and builds authority. Generating lead magnets, content creation editing and optimization, multi funnel marketing.""",
                  style: GoogleFonts.aBeeZee(
                    color: Colors.grey.shade600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 50,),
                Wrap(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                color1 = AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                color1 = AppColors.primary;
                              });
                            },

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton.icon(
                                onPressed: null,
                                icon: Icon(
                                  Icons.person,
                                  color: AppColors.onprimary,
                                ),
                                label: SelectableText(
                                  'Elbek Mirzamakhmudov',
                                  style: TextStyle(fontSize: 15, color: color1),
                                ),
                              ),
                            )),
                        MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                color2 = AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                color2 = AppColors.primary;
                              });
                            },

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton.icon(
                                onPressed: () async {
                                  final smth = await launch("mailto:elbekmirzamakhmudov@gmail.com?${Uri.encodeComponent('Hello')}&body=${Uri.encodeComponent('Hello Brother')}");
                                  },
                                icon: Icon(
                                  Icons.email_outlined,
                                  color: AppColors.onprimary,
                                ),
                                label: Text(
                                  'elbekmirzamakhmudov@gmail.com',
                                  style: TextStyle(fontSize: 15, color: color2),
                                ),
                              ),
                            )),
                        MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                color3 = AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                color3 = AppColors.primary;
                              });
                            },

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton.icon(
                                onPressed: null,
                                icon: Icon(
                                  Icons.calendar_today,
                                  color: AppColors.onprimary,
                                ),
                                label: SelectableText(
                                  '8 August, 2005',
                                  style: TextStyle(fontSize: 15, color: color3),
                                ),
                              ),
                            )),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                color4 = AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                color4 = AppColors.primary;
                              });
                            },

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton.icon(
                                onPressed: () async {
                                  final Uri telUrl = Uri(
                                    scheme: 'tel',
                                    path: '+998936669953',

                                  );
                                  await launch('tel:+998936669953');
                                },
                                icon: Icon(
                                  Icons.call,
                                  color: AppColors.onprimary,
                                ),
                                label: Text(
                                  '(+998) 93 666 99 53',
                                  style: TextStyle(fontSize: 15, color: color4),
                                ),
                              ),
                            )),
                        MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                color5 = AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                color5 = AppColors.primary;
                              });
                            },

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton.icon(
                                onPressed: (){
                                  launchMaps();
                                },
                                icon: Icon(
                                  Icons.location_on_outlined,
                                  color: AppColors.onprimary,
                                ),
                                label: Text(
                                  'Tashkent, Uzbekistan',
                                  style: TextStyle(fontSize: 15, color: color5),
                                ),
                              ),
                            )),
                        MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                color6 = AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                color6 = AppColors.primary;
                              });
                            },

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton.icon(
                                onPressed: (){
                                  launch("https://www.instagram.com/el.bekk/");
                                },
                                icon: Icon(
                                  MaterialCommunityIcons.instagram,
                                  color: AppColors.onprimary,
                                ),
                                label: Text(
                                  'el.bekk',
                                  style: TextStyle(fontSize: 15, color: color6),
                                ),
                              ),
                            )),
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }  // ================= TABLET =================
  Widget TabletContainer3() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50),
      child: Wrap(
        children: [
          Container(
              child: Image.asset('assets/elbek1.jpg')),
          Container(
              child: Padding(
            padding: const EdgeInsets.only(left: 70, right: 50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Biography',
                  style: GoogleFonts.bodoniModa(
                      fontSize: 50, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  """Talented UI/UX designer with 8+ years of experience, seeking to elevate work at ModelTheme, Inc. As Lead UI/UX Head completed project before dead line. ittis augue, id sollicitudin tristique ut.\n\n\nGain visiblity & authorities with a unique mix of content strategy & designing I seek to understand your customer & the problems they need to solve. Then persusion science and marketng strategy to create kind content that rapidly drives traffic and builds authority. Generating lead magnets, content creation editing and optimization, multi funnel marketing.""",
                  style: GoogleFonts.aBeeZee(
                    color: Colors.grey.shade600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 50,),
                Wrap(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                color1 = AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                color1 = AppColors.primary;
                              });
                            },

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton.icon(
                                onPressed: null,
                                icon: Icon(
                                  Icons.person,
                                  color: AppColors.onprimary,
                                ),
                                label: SelectableText(
                                  'Elbek Mirzamakhmudov',
                                  style: TextStyle(fontSize: 15, color: color1),
                                ),
                              ),
                            )),
                        MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                color2 = AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                color2 = AppColors.primary;
                              });
                            },

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton.icon(
                                onPressed: () async {
                                  final smth = await launch("mailto:elbekmirzamakhmudov@gmail.com?${Uri.encodeComponent('Hello')}&body=${Uri.encodeComponent('Hello Brother')}");
                                  },
                                icon: Icon(
                                  Icons.email_outlined,
                                  color: AppColors.onprimary,
                                ),
                                label: Text(
                                  'elbekmirzamakhmudov@gmail.com',
                                  style: TextStyle(fontSize: 15, color: color2),
                                ),
                              ),
                            )),
                        MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                color3 = AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                color3 = AppColors.primary;
                              });
                            },

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton.icon(
                                onPressed: null,
                                icon: Icon(
                                  Icons.calendar_today,
                                  color: AppColors.onprimary,
                                ),
                                label: SelectableText(
                                  '8 August, 2005',
                                  style: TextStyle(fontSize: 15, color: color3),
                                ),
                              ),
                            )),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                color4 = AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                color4 = AppColors.primary;
                              });
                            },

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton.icon(
                                onPressed: () async {
                                  final Uri telUrl = Uri(
                                    scheme: 'tel',
                                    path: '+998936669953',

                                  );
                                  await launch('tel:+998936669953');
                                },
                                icon: Icon(
                                  Icons.call,
                                  color: AppColors.onprimary,
                                ),
                                label: Text(
                                  '(+998) 93 666 99 53',
                                  style: TextStyle(fontSize: 15, color: color4),
                                ),
                              ),
                            )),
                        MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                color5 = AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                color5 = AppColors.primary;
                              });
                            },

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton.icon(
                                onPressed: (){
                                  launchMaps();
                                },
                                icon: Icon(
                                  Icons.location_on_outlined,
                                  color: AppColors.onprimary,
                                ),
                                label: Text(
                                  'Tashkent, Uzbekistan',
                                  style: TextStyle(fontSize: 15, color: color5),
                                ),
                              ),
                            )),
                        MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                color6 = AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                color6 = AppColors.primary;
                              });
                            },

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton.icon(
                                onPressed: (){
                                  launch("https://www.instagram.com/el.bekk/");
                                },
                                icon: Icon(
                                  MaterialCommunityIcons.instagram,
                                  color: AppColors.onprimary,
                                ),
                                label: Text(
                                  'el.bekk',
                                  style: TextStyle(fontSize: 15, color: color6),
                                ),
                              ),
                            )),
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }

  // ================= MOBILE =================
  Widget MobileContainer3() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20,),
      child: Column(
        children: [
          SizedBox(
              width: w!,
              child: Image.asset('assets/elbek1.jpg')),
          const SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Biography',
              style: GoogleFonts.bodoniModa(
                  fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              """Talented UI/UX designer with 8+ years of experience, seeking to elevate work at ModelTheme, Inc. As Lead UI/UX Head completed project before dead line. ittis augue, id sollicitudin tristique ut.\n\n\nGain visiblity & authorities with a unique mix of content strategy & designing I seek to understand your customer & the problems they need to solve. Then persusion science and marketng strategy to create kind content that rapidly drives traffic and builds authority. Generating lead magnets, content creation editing and optimization, multi funnel marketing.""",
              style: GoogleFonts.aBeeZee(
                color: Colors.grey.shade600,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 50,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        color1 = AppColors.onprimary;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        color1 = AppColors.primary;
                      });
                    },

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton.icon(
                        onPressed: null,
                        icon: Icon(
                          Icons.person,
                          color: AppColors.onprimary,
                        ),
                        label: SelectableText(
                          'Elbek Mirzamakhmudov',
                          style: TextStyle(fontSize: 15, color: color1),
                        ),
                      ),
                    )),
                MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        color2 = AppColors.onprimary;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        color2 = AppColors.primary;
                      });
                    },

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton.icon(
                        onPressed: () async {
                          final smth = await launch("mailto:elbekmirzamakhmudov@gmail.com?${Uri.encodeComponent('Hello')}&body=${Uri.encodeComponent('Hello Brother')}");
                          },
                        icon: Icon(
                          Icons.email_outlined,
                          color: AppColors.onprimary,
                        ),
                        label: Text(
                          'elbekmirzamakhmudov@gmail.com',
                          style: TextStyle(fontSize: 15, color: color2),
                        ),
                      ),
                    )),
                MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        color3 = AppColors.onprimary;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        color3 = AppColors.primary;
                      });
                    },

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton.icon(
                        onPressed: null,
                        icon: Icon(
                          Icons.calendar_today,
                          color: AppColors.onprimary,
                        ),
                        label: SelectableText(
                          '8 August, 2005',
                          style: TextStyle(fontSize: 15, color: color3),
                        ),
                      ),
                    )),
                MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        color4 = AppColors.onprimary;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        color4 = AppColors.primary;
                      });
                    },

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton.icon(
                        onPressed: () async {
                          final Uri telUrl = Uri(
                            scheme: 'tel',
                            path: '+998936669953',

                          );
                          await launch('tel:+998936669953');
                        },
                        icon: Icon(
                          Icons.call,
                          color: AppColors.onprimary,
                        ),
                        label: Text(
                          '(+998) 93 666 99 53',
                          style: TextStyle(fontSize: 15, color: color4),
                        ),
                      ),
                    )),
                MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        color5 = AppColors.onprimary;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        color5 = AppColors.primary;
                      });
                    },

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton.icon(
                        onPressed: (){
                          launchMaps();
                        },
                        icon: Icon(
                          Icons.location_on_outlined,
                          color: AppColors.onprimary,
                        ),
                        label: Text(
                          'Tashkent, Uzbekistan',
                          style: TextStyle(fontSize: 15, color: color5),
                        ),
                      ),
                    )),
                MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        color6 = AppColors.onprimary;
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        color6 = AppColors.primary;
                      });
                    },

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton.icon(
                        onPressed: (){
                          launch("https://www.instagram.com/el.bekk/");
                        },
                        icon: Icon(
                          MaterialCommunityIcons.instagram,
                          color: AppColors.onprimary,
                        ),
                        label: Text(
                          'el.bekk',
                          style: TextStyle(fontSize: 15, color: color6),
                        ),
                      ),
                    ))
              ],
            )
          ],
            ),
          ),
        ],
      ),
    );
  }


}
