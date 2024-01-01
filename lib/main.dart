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
    SystemChrome.setApplicationSwitcherDescription(ApplicationSwitcherDescription(
      label: "Elbek's CV1",
      primaryColor: Theme.of(context).primaryColor.value, // This line is required
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      title: 'Elbek CV',
      home: Title(color: Colors.white,
      title: "Elbek's CV2",
      child: const Home()),
    );
  }
}
