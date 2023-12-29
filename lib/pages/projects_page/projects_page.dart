import 'package:elbek/riverpod/all_providers.dart';
import 'package:elbek/utils/colors.dart';
import 'package:elbek/utils/constants.dart';
import 'package:elbek/utils/user_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage extends ConsumerStatefulWidget {
  const ProjectsPage({super.key});

  @override
  ConsumerState<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends ConsumerState<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    final darkState = ref.watch(AppProvider.isDarkProvider);
    return ScreenTypeLayout(
      mobile: _mobilePage(darkState),
      desktop: _desktopPage(darkState),
      tablet: _desktopPage(darkState),
    );
  }

  Widget _desktopPage(bool darkState) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! * 0.1),
      constraints: const BoxConstraints(maxWidth: 1200),
      child: Column(
        children: [
          Text(
            'Projects',
            textAlign: TextAlign.center,
            style: GoogleFonts.bodoniModa(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: darkState
                    ? AppColors.mainTitleColorDark
                    : AppColors.mainTitleColorLight),
          ),
          const SizedBox(
            height: 80,
          ),
          ...List.generate(UserData.projects.length, (index) {
            final current = UserData.projects[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    constraints:
                        const BoxConstraints(maxWidth: 350, maxHeight: 250),
                    color: Colors.white,
                    child: current[0],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          current[1],
                          style: GoogleFonts.aBeeZee(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: darkState
                                  ? AppColors.mainTitleColorDark
                                  : AppColors.mainTitleColorLight),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          current[2],
                          style: GoogleFonts.aBeeZee(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                              color: darkState
                                  ? AppColors.mainTitleColorDark
                                  : AppColors.mainTitleColorLight),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: current[3] == ''
                              ? null
                              : () {
                                  launch(current[3]);
                                },
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'view',
                                style: TextStyle(color: Colors.blue),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.open_in_new,
                                size: 15,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _mobilePage(bool darkState) {
    return Container(
      constraints: BoxConstraints(maxWidth: w! * 0.75),
      child: Column(
        children: [
          Text(
            'Projects',
            textAlign: TextAlign.center,
            style: GoogleFonts.bodoniModa(
              color: darkState?AppColors.mainTitleColorDark:AppColors.mainTitleColorDark,
                fontSize: 45, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              runSpacing: 20,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: List.generate(UserData.projects.length, (index){
                final current = UserData.projects[index];
                return projectColumn(darkState,current[0],current[1],current[2],current[3],);
              }),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
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

  Widget projectColumn(bool darkState,Widget asset,String title,String subtitle,String url) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      constraints:
                          const BoxConstraints(maxWidth: 350, maxHeight: 250),
                      color: AppColors.mainBackgroundColorLight,
                      child:
                         asset,
                    ),
                    const SizedBox(height: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.aBeeZee(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: darkState?AppColors.mainTitleColorDark:AppColors.mainTitleColorLight),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          subtitle,
                          textAlign: TextAlign.center,

                          style: GoogleFonts.aBeeZee(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                              color: darkState?AppColors.mainTitleColorDark:AppColors.mainTitleColorLight),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            launch(url);
                          },
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'view',
                                style: TextStyle(color: Colors.blue),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.open_in_new,
                                size: 15,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
    );
  }
}
