import 'package:elbek/utils/constants.dart';
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

class AppFunctions {
  AppFunctions._();

  static Future<void> sendMessage(
      {required bool isSend,
      required String email,
      required String text}) async {
    final username = (await Telegram(token).getMe()).username;
    var teledart = TeleDart(token, Event(username!));
    teledart.sendMessage('5925263907',
        "Email: $email\nTime: ${DateTime.now().toString()}\nMessage: $text");
    teledart.start();
  }
}
