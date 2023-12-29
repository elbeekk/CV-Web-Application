import 'dart:developer';

import 'package:elbek/utils/constants.dart';
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';
import 'package:telegram_client/telegram_bot_api/telegram_bot_api_core.dart';

class AppFunction {
  AppFunction._();
  static TelegramBotApi? tg;
  static init() async {
    try{
      tg =  TelegramBotApi(tokenBot: token,);
      tg?.initServer();
      // final username = (await Telegram(token).getMe()).username;
      // teledart = TeleDart(token, Event(username!));
      // teledart?.start();
    }catch(e){
      log("Error in init ${e}");
    }
  }
  static Future<void> sendMessage(
      {required String name,required String email,
      required String text}) async {
    if(tg!=null) {
      try{
       await tg?.request("sendMessage",parameters: {
          "chat_id": "5925263907",
          "text": "Name: $name \nLink: $email\nMessage: $text"
        }).whenComplete((){
          log("message sent ");
        });
      }catch(e){
        log('Error occured $e');
      }
    }else{
      log("tg is not initialized");
    }
  }
}
