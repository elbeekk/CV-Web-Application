import 'package:elbek/utils/colors.dart';
import 'package:elbek/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class Container6 extends StatelessWidget {
  const Container6({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer6(),
      desktop: DesktopContainer6(),
      tablet: TabletContainer6(),
    );
  }

  Widget DesktopContainer6() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w!*0.1),
      constraints: BoxConstraints(maxWidth: 1200),
      child: Column(
        children: [
          Text(
            'Projects',
            textAlign: TextAlign.center,
            style: GoogleFonts.bodoniModa(
                fontSize: 45, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 80,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxWidth: 350,
                    maxHeight: 250
                  ),
                  color: AppColors.onprimary,
                  child: Lottie.asset('assets/telegramBot.json',fit: BoxFit.fill),
                ),
                const SizedBox(width: 25,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Telegram Bot',
                        style: GoogleFonts.aBeeZee(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(height: 20,),
                      Text("This bot is written using the teledart package of the flutter framework of the dart language and this bot converts any type of video into audio. The bot user interface is in Uzbek"
                          ", Russian, and English, and there will be no problems using the bot.",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            color: Colors.black),),
                      const SizedBox(height: 20,),
                      InkWell(
                        onTap: (){
                          launch('https://t.me/video_to_audio0_bot');
                        },
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('view',style: TextStyle(color: Colors.blue),),
                            SizedBox(width: 5,),
                            Icon(Icons.open_in_new,size: 15,color: Colors.blue,),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Row(
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: [
          //       Container(
          //         height: 200,
          //         width: 300,
          //         color: AppColors.onprimary,
          //       ),
          //       const SizedBox(width: 15,),
          //       Expanded(
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           mainAxisAlignment: MainAxisAlignment.start,
          //           children: [
          //             Text(
          //               'Project 2',
          //               style: GoogleFonts.aBeeZee(
          //                   fontSize: 20,
          //                   fontWeight: FontWeight.bold,
          //                   color: Colors.black),
          //             ),
          //             const SizedBox(height: 20,),
          //             const Text("""Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dapibus rhoncus elit, quis egestas massa convallis quis. Suspendisse eget orci in erat porttitor placerat. Sed eget nibh consequat, scelerisque mauris eget, pretium quam. Curabitur id justo luctus, rhoncus nisl tempor, porta turpis. Vestibulum vestibulum, augue sed vehicula luctus, leo elit tristique tellus, eget ultrices diam nisl vestibulum urna. Suspendisse iaculis tempus dignissim. """),
          //             const SizedBox(height: 20,),
          //             InkWell(
          //               onTap: (){
          //                 launch('');
          //               },
          //               child: const Row(
          //                 mainAxisSize: MainAxisSize.min,
          //                 children: [
          //                   Text('view',style: TextStyle(color: Colors.blue),),
          //                   SizedBox(width: 5,),
          //                   Icon(Icons.open_in_new,size: 15,color: Colors.blue,),
          //                 ],
          //               ),
          //             )
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
  Widget TabletContainer6() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w!*0.05),
      child: Column(
        children: [
          Text(
            'Projects',
            textAlign: TextAlign.center,
            style: GoogleFonts.bodoniModa(
                fontSize: 45, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 80,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  constraints: BoxConstraints(
                      maxWidth: 350,
                      maxHeight: 250
                  ),
                  color: AppColors.onprimary,
                  child: Lottie.asset('assets/telegramBot.json',fit: BoxFit.fill),
                ),
                const SizedBox(width: 25,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Telegram Bot',
                        style: GoogleFonts.aBeeZee(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(height: 20,),
                      Text("This bot is written using the teledart package of the flutter framework of the dart language and this bot converts any type of video into audio. The bot user interface is in Uzbek"
                          ", Russian, and English, and there will be no problems using the bot.",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            color: Colors.black),),
                      const SizedBox(height: 20,),
                      InkWell(
                        onTap: (){
                          launch('https://t.me/video_to_audio0_bot');
                        },
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('view',style: TextStyle(color: Colors.blue),),
                            SizedBox(width: 5,),
                            Icon(Icons.open_in_new,size: 15,color: Colors.blue,),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Row(
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: [
          //       Container(
          //         height: 200,
          //         width: 300,
          //         color: AppColors.onprimary,
          //       ),
          //       const SizedBox(width: 15,),
          //       Expanded(
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           mainAxisAlignment: MainAxisAlignment.start,
          //           children: [
          //             Text(
          //               'Project 2',
          //               style: GoogleFonts.aBeeZee(
          //                   fontSize: 20,
          //                   fontWeight: FontWeight.bold,
          //                   color: Colors.black),
          //             ),
          //             const SizedBox(height: 20,),
          //             const Text("""Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dapibus rhoncus elit, quis egestas massa convallis quis. Suspendisse eget orci in erat porttitor placerat. Sed eget nibh consequat, scelerisque mauris eget, pretium quam. Curabitur id justo luctus, rhoncus nisl tempor, porta turpis. Vestibulum vestibulum, augue sed vehicula luctus, leo elit tristique tellus, eget ultrices diam nisl vestibulum urna. Suspendisse iaculis tempus dignissim. """),
          //             const SizedBox(height: 20,),
          //             InkWell(
          //               onTap: (){
          //                 launch('');
          //               },
          //               child: const Row(
          //                 mainAxisSize: MainAxisSize.min,
          //                 children: [
          //                   Text('view',style: TextStyle(color: Colors.blue),),
          //                   SizedBox(width: 5,),
          //                   Icon(Icons.open_in_new,size: 15,color: Colors.blue,),
          //                 ],
          //               ),
          //             )
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
  Widget MobileContainer6() {
    return Container(
      constraints: BoxConstraints(maxWidth: w!*0.75),
      child: Column(
        children: [
          Text(
            'Projects',
            textAlign: TextAlign.center,
            style: GoogleFonts.bodoniModa(
                fontSize: 45, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 80,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              runSpacing: 20,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Container(
                  constraints: BoxConstraints(
                      maxWidth: 350,
                      maxHeight: 250
                  ),
                  color: AppColors.onprimary,
                  child: Lottie.asset('assets/telegramBot.json',fit: BoxFit.fill),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Telegram Bot',
                      style: GoogleFonts.aBeeZee(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),

                    Text("This bot is written using the teledart package of the flutter framework of the dart language and this bot converts any type of video into audio. The bot user interface is in Uzbek"
                        ", Russian, and English, and there will be no problems using the bot.",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                          color: Colors.black),),
                    const SizedBox(height: 20,),
                    InkWell(
                      onTap: (){
                        launch('https://t.me/video_to_audio0_bot');
                      },
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('view',style: TextStyle(color: Colors.blue),),
                          SizedBox(width: 5,),
                          Icon(Icons.open_in_new,size: 15,color: Colors.blue,),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 100,),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Wrap(
          //     alignment: WrapAlignment.center,
          //     crossAxisAlignment: WrapCrossAlignment.center,
          //     children: [
          //       Container(
          //         height: 200,
          //         width: 300,
          //         margin: EdgeInsets.only(bottom: 20),
          //
          //         color: AppColors.onprimary,
          //       ),
          //       const SizedBox(width: 15,),
          //       Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         mainAxisAlignment: MainAxisAlignment.start,
          //         children: [
          //           Text(
          //             'Project 2',
          //             style: GoogleFonts.aBeeZee(
          //                 fontSize: 20,
          //                 fontWeight: FontWeight.bold,
          //                 color: Colors.black),
          //           ),
          //           const SizedBox(height: 20,),
          //           const Text("""Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque dapibus rhoncus elit, quis egestas massa convallis quis. Suspendisse eget orci in erat porttitor placerat. Sed eget nibh consequat, scelerisque mauris eget, pretium quam. Curabitur id justo luctus, rhoncus nisl tempor, porta turpis. Vestibulum vestibulum, augue sed vehicula luctus, leo elit tristique tellus, eget ultrices diam nisl vestibulum urna. Suspendisse iaculis tempus dignissim. """),
          //           const SizedBox(height: 20,),
          //           InkWell(
          //             onTap: (){
          //               launch('');
          //             },
          //             child: const Row(
          //               mainAxisSize: MainAxisSize.min,
          //               children: [
          //                 Text('view',style: TextStyle(color: Colors.blue),),
          //                 SizedBox(width: 5,),
          //                 Icon(Icons.open_in_new,size: 15,color: Colors.blue,),
          //               ],
          //             ),
          //           )
          //         ],
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
