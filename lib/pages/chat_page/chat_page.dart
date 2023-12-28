import 'package:elbek/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

import '../../utils/constants.dart';

class Container6_1 extends StatefulWidget {
  Container6_1({super.key});

  @override
  State<Container6_1> createState() => _Container6_1State();
}

class _Container6_1State extends State<Container6_1> {
  TextEditingController nameCon = TextEditingController();
  TextEditingController linkCon = TextEditingController();
  FToast fToast = FToast();
  TeleDart? teleDart;
  TextEditingController messageCon = TextEditingController();

  Future<void> initialize() async {
    String token = "6197126197:AAFNCVK7kaBHXvrZrgIAsLZL6pZPEA7W7Ig";
    final username = (await Telegram(token).getMe()).username;
    teleDart = TeleDart(token, Event(username!));
    teleDart?.start();
  }

  @override
  void initState() {
    fToast.init(context);

    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: DesktopContainer6_1(),
      desktop: DesktopContainer6_1(),
      tablet: DesktopContainer6_1(),
    );
  }

  Widget DesktopContainer6_1() {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 100,
      ),
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Colors.grey.shade50,AppColors.backColor, Colors.grey.shade50])),
      child: Column(
        children: [
          //   Text(
          //   'Contact Me',
          //   textAlign: TextAlign.center,
          //   style: GoogleFonts.bodoniModa(
          //       fontSize: 45, fontWeight: FontWeight.bold),
          // ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 600,
                padding:
                    EdgeInsets.symmetric(vertical: 70, horizontal: w! * 0.08),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: AppColors.onprimary.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 5),
                ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Get in touch 👋🏻',
                      style: TextStyle(
                          fontSize: 27,
                          color: AppColors.onprimary,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    SizedBox(
                        width: 260,
                        child: TextField(
                          controller: nameCon,
                          style: TextStyle(
                              fontSize: 17,
                              color: AppColors.onprimary,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                              letterSpacing: 0.7,
                              wordSpacing: 1.2),
                          decoration: InputDecoration(
                            label: const Text('Your name.'),
                            labelStyle: TextStyle(
                                color: AppColors.onprimary, fontSize: 15),
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.onprimary)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.onprimary)),
                            disabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.onprimary)),
                            errorBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.onprimary)),
                          ),
                          cursorColor: AppColors.onprimary,
                          cursorWidth: 1,
                          cursorHeight: 15,
                          cursorOpacityAnimates: true,
                        )),
                    SizedBox(
                        width: 260,
                        child: TextField(
                          style: TextStyle(
                              fontSize: 17,
                              color: AppColors.onprimary,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                              letterSpacing: 0.7,
                              wordSpacing: 1.2),
                          controller: linkCon,
                          decoration: InputDecoration(
                            label: const Text('Link to your social media acc.'),
                            labelStyle: TextStyle(
                                color: AppColors.onprimary, fontSize: 15),
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.onprimary)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.onprimary)),
                            disabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.onprimary)),
                            errorBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.onprimary)),
                          ),
                          cursorColor: AppColors.onprimary,
                          cursorWidth: 1,
                          cursorHeight: 15,
                          cursorOpacityAnimates: true,
                        )),
                    SizedBox(
                        width: 260,
                        child: TextField(
                          style: TextStyle(
                              fontSize: 17,
                              color: AppColors.onprimary,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                              letterSpacing: 0.7,
                              wordSpacing: 1.2),
                          maxLines: 5,
                          controller: messageCon,
                          minLines: 1,
                          decoration: InputDecoration(
                            label: const Text('Message.'),
                            labelStyle: TextStyle(
                                color: AppColors.onprimary, fontSize: 15),
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.onprimary)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.onprimary)),
                            disabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.onprimary)),
                            errorBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.onprimary)),
                          ),
                          cursorColor: AppColors.onprimary,
                          cursorWidth: 1,
                          cursorHeight: 15,
                          cursorOpacityAnimates: true,
                        )),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: 260,
                      height: 32,
                      child: ElevatedButton(
                        onPressed: () {
                          if (nameCon.text.isNotEmpty &&
                              messageCon.text.isNotEmpty) {
                            teleDart
                                ?.sendMessage(
                                    5925263907,
                                    "---New Message From CV website---\n\n"
                                    "Name: ${nameCon.text.toString().trim()}\n"
                                    "Link: ${linkCon.text.toString().trim()}\n"
                                    "Message: ${messageCon.text.toString().trim()}\n")
                                .whenComplete(() {
                              fToast.showToast(
                                child: Container(
                                    height: 50,
                                    width: 250,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.green.shade300),
                                    child: const Center(
                                        child: Text(
                                      'Message sent!',
                                      style: TextStyle(color: Colors.white),
                                    ))),
                                gravity: ToastGravity.BOTTOM_RIGHT,
                              );
                              setState(() {
                                nameCon.clear();
                                linkCon.clear();
                                messageCon.clear();
                              });
                            });
                          }
                          if (nameCon.text.isEmpty) {
                            fToast.showToast(
                              child: Container(
                                  height: 50,
                                  width: 250,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.red.shade300),
                                  child: const Center(
                                      child: Text(
                                    'Please write your name!',
                                    style: TextStyle(color: Colors.white),
                                  ))),
                              gravity: ToastGravity.BOTTOM_RIGHT,
                            );
                          }
                          if (messageCon.text.isEmpty) {
                            fToast.showToast(
                              child: Container(
                                  height: 50,
                                  width: 250,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.red.shade300),
                                  child: const Center(
                                      child: Text(
                                    'Please write your message!',
                                    style: TextStyle(color: Colors.white),
                                  ))),
                              gravity: ToastGravity.BOTTOM_RIGHT,
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.onprimary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            textStyle: GoogleFonts.akatab(
                                color: Colors.white, fontSize: 16)),
                        child: const Text(
                          'Send Message',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
