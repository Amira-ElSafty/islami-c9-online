import 'package:flutter/material.dart';
import 'package:flutter_islami_app_c9_online/home/home_screen.dart';
import 'package:flutter_islami_app_c9_online/home/quran/sura_details_screen.dart';
import 'package:flutter_islami_app_c9_online/my_theme.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => HomeScreen(),
        SuraDetailsScreen.routeName : (context) => SuraDetailsScreen(),
      },
      theme: MyTheme.lightTheme,
    );
  }
}