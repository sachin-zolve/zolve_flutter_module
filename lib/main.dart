import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_module/core/deeplink_handler/global_deeplink_handler.dart';

Future<void> main(List<String> arguments) async {

  for (final arg in arguments) {
    debugPrint('Flutter Received argument from native argument: $arg');
  }

  runApp(MyApp(arguments.firstOrNull ?? ""));
}

class MyApp extends StatelessWidget {
  String deeplink;
   MyApp(this.deeplink,{super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget? route = getRoute(deeplink);
    if(route == null) {
      SystemNavigator.pop();
    }
    return MaterialApp(
      title: 'Zolve',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home:  route );
  }
}
