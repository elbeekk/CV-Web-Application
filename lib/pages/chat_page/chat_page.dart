import 'package:elbek/riverpod/all_providers.dart';
import 'package:elbek/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

import '../../utils/constants.dart';

class ChatPage extends ConsumerStatefulWidget {
  const ChatPage({super.key});

  @override
  ConsumerState<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  TextEditingController nameCon = TextEditingController();
  TextEditingController linkCon = TextEditingController();
  FToast fToast = FToast();
  TeleDart? teleDart;
  TextEditingController messageCon = TextEditingController();

  @override
  void initState() {
    fToast.init(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final darkState = ref.watch(AppProvider.isDarkProvider);
    return ScreenTypeLayout(
      mobile: _desktopPage(darkState),
    );
  }

  Widget _desktopPage(bool darkState) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 150,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 500,
                padding: EdgeInsets.symmetric(horizontal: w! * 0.06),
                decoration: BoxDecoration(
                    color: darkState
                        ? AppColors.mainBackgroundColorDark
                        : AppColors.mainBackgroundColorLight,
                    boxShadow: [
                      BoxShadow(
                          color: darkState
                              ? AppColors.chatPageMainColor.withOpacity(.5)
                              : AppColors.mainAppColorLight.withOpacity(0.5),
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
                          color: darkState
                              ? AppColors.chatPageMainColor
                              : AppColors.mainAppColorLight,
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
                              color: darkState
                                  ? AppColors.chatPageMainColor
                                  : AppColors.mainAppColorLight,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                              letterSpacing: 0.7,
                              wordSpacing: 1.2),
                          decoration: InputDecoration(
                            label: const Text('Your name.'),
                            labelStyle: TextStyle(
                                color: darkState
                                    ? AppColors.chatPageMainColor
                                    : AppColors.mainAppColorLight,
                                fontSize: 15),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: darkState
                                        ? AppColors.chatPageMainColor
                                        : AppColors.mainAppColorLight)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: darkState
                                        ? AppColors.chatPageMainColor
                                        : AppColors.mainAppColorLight)),
                            disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: darkState
                                        ? AppColors.chatPageMainColor
                                        : AppColors.mainAppColorLight)),
                            errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: darkState
                                        ? AppColors.chatPageMainColor
                                        : AppColors.mainAppColorLight)),
                          ),
                          cursorColor: darkState
                              ? AppColors.chatPageMainColor
                              : AppColors.mainAppColorLight,
                          cursorWidth: 1,
                          cursorHeight: 15,
                          cursorOpacityAnimates: true,
                        )),
                    SizedBox(
                        width: 260,
                        child: TextField(
                          style: TextStyle(
                              fontSize: 17,
                              color: darkState
                                  ? AppColors.chatPageMainColor
                                  : AppColors.mainAppColorLight,
                              fontWeight: FontWeight.w500,
                              height: 1.5,
                              letterSpacing: 0.7,
                              wordSpacing: 1.2),
                          controller: linkCon,
                          decoration: InputDecoration(
                            label: const Text('Link to your social media acc.'),
                            labelStyle: TextStyle(
                                color: darkState
                                    ? AppColors.chatPageMainColor
                                    : AppColors.mainAppColorLight,
                                fontSize: 15),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: darkState
                                        ? AppColors.chatPageMainColor
                                        : AppColors.mainAppColorLight)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: darkState
                                        ? AppColors.chatPageMainColor
                                        : AppColors.mainAppColorLight)),
                            disabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.onprimary)),
                            errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: darkState
                                        ? AppColors.chatPageMainColor
                                        : AppColors.mainAppColorLight)),
                          ),
                          cursorColor: darkState
                              ? AppColors.chatPageMainColor
                              : AppColors.mainAppColorLight,
                          cursorWidth: 1,
                          cursorHeight: 15,
                          cursorOpacityAnimates: true,
                        )),
                    SizedBox(
                        width: 260,
                        child: TextField(
                          style: TextStyle(
                              fontSize: 17,
                              color: darkState
                                  ? AppColors.chatPageMainColor
                                  : AppColors.mainAppColorLight,
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
                                color: darkState
                                    ? AppColors.chatPageMainColor
                                    : AppColors.mainAppColorLight,
                                fontSize: 15),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: darkState
                                        ? AppColors.chatPageMainColor
                                        : AppColors.mainAppColorLight)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: darkState
                                        ? AppColors.chatPageMainColor
                                        : AppColors.mainAppColorLight)),
                            disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: darkState
                                        ? AppColors.chatPageMainColor
                                        : AppColors.mainAppColorLight)),
                            errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: darkState
                                        ? AppColors.chatPageMainColor
                                        : AppColors.mainAppColorLight)),
                          ),
                          cursorColor: darkState
                              ? AppColors.chatPageMainColor
                              : AppColors.mainAppColorLight,
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
                              messageCon.text.isNotEmpty &&
                              teleDart != null) {
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
                            backgroundColor: darkState
                                ? AppColors.mainAppColorDark
                                : AppColors.mainAppColorLight,
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
