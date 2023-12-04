import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_module/presentation/onboarding/onboarding_screen.dart';

import 'presentation/splash/splash_screen.dart';

Future<void> main(List<String> arguments) async {

  for (final arg in arguments) {
    print('Flutter Received argument from native argument: $arg');
  }

  runApp(MyApp(arguments.firstOrNull ?? ""));
}
var globalContext; // Declare global variable to store context from StatelessWidget

class MyApp extends StatelessWidget {
  String deeplink;
   MyApp(this.deeplink,{super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    globalContext = context;
    var skipIntro = false;
    if(deeplink.toLowerCase().contains("signup")) {
      skipIntro = true;
    }
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in a Flutter IDE). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: skipIntro == false ? MyHomePage(key: key, title: 'Zolve Flutter')
      : const OnboardingScreen(),
    );
  }
}
