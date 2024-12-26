import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/main_page/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        primarySwatch: Colors.blue,
        textTheme:const TextTheme(
          bodyMedium:TextStyle(color:Colors.white),
          bodyLarge:TextStyle(color:Colors.white),
        ),
        
        useMaterial3: true,
      ),
      home:  ScreenMainPage(),
    );
  }
}
