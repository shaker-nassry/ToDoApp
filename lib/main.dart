import 'package:flutter/material.dart';
import 'dart:io';
import 'package:todolist/home/homescreen.dart';
import 'mytheme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:calendar_timeline/calendar_timeline.dart';

void main() {
  runApp (MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: MyTheme.lightmode,
      darkTheme: MyTheme.darkmode,
      initialRoute: "Home Screen"  ,
      routes: {
       // "Login" :(context) => LoginScreen() ,
        HomeScreen.routename : (context) => HomeScreen() ,
      },
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('en'),

    ) ;
  }
}
