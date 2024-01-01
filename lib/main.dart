import 'package:elbek/riverpod/all_providers.dart';
import 'package:elbek/utils/colors.dart';
import 'package:elbek/utils/functions.dart';
import 'package:flutter/material.dart';
import 'package:elbek/pages/main_page.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  AppFunction.init();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          return Title(
              color: ref.watch(AppProvider.isDarkProvider)
                  ? AppColors.mainAppColorDark
                  : AppColors.mainAppColorLight,
              title: "Elbek's CV",
              child: const Home());
        },
      ),
    );
  }
}
