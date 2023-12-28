import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:elbek/utils/colors.dart';
import 'package:elbek/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Container4 extends StatefulWidget {
  Container4({super.key});

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  Color stepperColor1 = AppColors.primary;
  Color stepperColor2 = AppColors.primary;
  Color stepperColor3 = AppColors.primary;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer4(),
      desktop: DesktopContainer4(),
      tablet: DesktopContainer4(),
    );
  }

  Widget DesktopContainer4() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.grey.shade50,
              AppColors.backColor,
            ],
            begin: Alignment.topRight,
          )
      ),
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
                    fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 500,maxHeight: 170),
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
                      constraints: const BoxConstraints(maxWidth: 450),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                stepperColor1=AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                stepperColor1=AppColors.primary;
                              });
                            },
                            child: InkWell(
                              onTap: (){
                                launch('https://piima.uz/en/page/presidential-schools');
                              },
                              child: Text(
                                'Presidential School in Jizzakh',
                                style: GoogleFonts.aBeeZee(
                                  color: stepperColor1,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5,),
                          Text('Sep 2021 - Jun 2023',
                              style: GoogleFonts.aBeeZee(
                                color: Colors.grey.shade600,
                                fontSize: 15,
                              )),
                          const SizedBox(height: 7,),
                          Text(
                            'The Presidential School is a specialized public educational institution whose activities are aimed at identifying and educating gifted children to train highly qualified specialists.',
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
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 500,maxHeight: 170,),
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
                      constraints: const BoxConstraints(maxWidth: 450),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                stepperColor2=AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                stepperColor2=AppColors.primary;
                              });
                            },
                            child: InkWell(
                              onTap: (){
                                launch('https://tsue.uz/en');
                              },
                              child: Text(
                                'Tashkent State University of Economics',
                                style: GoogleFonts.aBeeZee(
                                  color: stepperColor2,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5,),
                          Text('Sep 2023 - Present',
                              style: GoogleFonts.aBeeZee(
                                color: Colors.grey.shade600,
                                fontSize: 15,
                              )),
                          const SizedBox(height: 7,),
                          Text(
                            'Tashkent State University of Economics is one of the largest higher education institutions in the field of economics in Uzbekistan and Central Asia.',
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
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Experience',
                style: GoogleFonts.bodoniModa(
                    fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                constraints:
                const BoxConstraints(maxWidth: 500,maxHeight:170),
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
                      constraints: const BoxConstraints(maxWidth: 450),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                stepperColor3=AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                stepperColor3=AppColors.primary;
                              });
                            },
                            child: InkWell(
                              onTap: (){
                                launch('https://githubit.com/');
                              },
                              child: Text(
                                'Mobile App Developer in Githubit',
                                style: GoogleFonts.aBeeZee(
                                  color: stepperColor3,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5,),
                          Text("Jun 2023 - Present",
                              style: GoogleFonts.aBeeZee(
                                color: Colors.grey.shade600,
                                fontSize: 15,
                              )),
                          const SizedBox(height: 7,),
                          Text(
                            'A mobile app developer uses programming languages and development skills to create, test, and develop applications on mobile devices.',
                            style: GoogleFonts.aBeeZee(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container customStepper(String url, String title, String duration, String subtitle,Color color) {
    return Container(
              constraints:
                   BoxConstraints(maxWidth: w!,maxHeight: 200),
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
                    constraints: BoxConstraints(maxWidth: w!*0.8),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                color=AppColors.onprimary;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                color=AppColors.primary;
                              });
                            },
                            child: InkWell(
                              onTap: (){
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
                          const SizedBox(height: 5,),
                          Text(duration,
                              style: GoogleFonts.aBeeZee(
                                color: Colors.grey.shade600,
                                fontSize: 15,
                              )),
                          const SizedBox(height: 7,),
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
          Row(),
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
                  customStepper('https://piima.uz/en/page/presidential-schools',
                      'Presidential School in Jizzakh', '2021 - 2023',
                      'The Presidential School is a specialized public educational institution whose activities are aimed at identifying and educating gifted children to train highly qualified specialists.',stepperColor1),
                  customStepper('https://tsue.uz/en', 'Tashkent State University of Economics', '2023 - Present', 'Tashkent State University of Economics is one of the largest higher education institutions in the field of economics in Uzbekistan and Central Asia.',stepperColor2)
                  ],
              )
            ],
          ),
          SizedBox(height: 50,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Experience',
                style: GoogleFonts.bodoniModa(
                    fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  customStepper('https://githubit.com/', 'Mobile App Developer in Githubit', "Jun 2023 - Present", 'A mobile app developer uses programming languages and development skills to create, test, and develop applications on mobile devices.',stepperColor3)
                ],),
            ],
          ),
        ],
      ),
    );
  }
}
