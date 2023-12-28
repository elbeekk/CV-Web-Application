import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppProvider {
  AppProvider._();

  static StateProvider<bool> isDarkProvider = StateProvider<bool>((ref) {
    // return false;
    return SchedulerBinding.instance.platformDispatcher.platformBrightness.index==0;
  });
  static StateProvider<String> localeProvider = StateProvider<String>((ref) => 'en');

}
