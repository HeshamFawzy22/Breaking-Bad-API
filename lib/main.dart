import 'constants/my_colors.dart';
import 'routing_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(routingApp: RoutingApp(),));
}

class MyApp extends StatelessWidget {
  final RoutingApp routingApp;

  const MyApp({super.key, required this.routingApp});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(actionsIconTheme: IconThemeData(color: MyColors.myWhite), iconTheme: IconThemeData(color: MyColors.myWhite)),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 107, 120, 131)),
        useMaterial3: true,
      ),
      onGenerateRoute: routingApp.onGenerateRoute,
    );
  }
}
