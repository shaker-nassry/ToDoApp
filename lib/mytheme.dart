import 'package:flutter/material.dart';

class MyTheme {
  static Color primary = Color(0xff5D9CEC);
  static Color backgroundlight = Color(0xffDFECDB);
  static Color donecolor = Color(0xff61E757);
  static Color blackcolor = Color(0xff000000);
  static Color whitecolor = Colors.white;
  static Color removecolor = Color(0xffEC4B4B);
  static Color backgrounddark = Color(0xff101627);


  static ThemeData darkmode = ThemeData(
      primaryColor: primary,
      scaffoldBackgroundColor: backgrounddark,
      cardColor: blackcolor,
      appBarTheme: AppBarTheme(
          backgroundColor: primary,
          elevation: 0,
          iconTheme: IconThemeData(color: whitecolor)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: primary,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          elevation: 0,
          selectedIconTheme: IconThemeData(
            size: 30,
          ),

          backgroundColor:Color(0xff141922),



      ),
      textTheme: TextTheme(
        labelLarge: TextStyle(
            color: whitecolor,
            fontSize: 22,
            fontWeight: FontWeight.bold),
        titleMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: primary,
        ),
        labelMedium: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: blackcolor),
        bodySmall: TextStyle(
          fontSize: 12,
          color: blackcolor,
        ),
        labelSmall: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: primary
        ),


      )
      );

  static ThemeData lightmode = ThemeData(
      primaryColor: primary,
      scaffoldBackgroundColor: backgroundlight,
      cardColor: whitecolor,
      appBarTheme: AppBarTheme(
          backgroundColor: primary,
          elevation: 0,
          iconTheme: IconThemeData(color: blackcolor)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: primary,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          selectedIconTheme: IconThemeData(
            size: 30,
          ) ,
      backgroundColor: Colors.transparent,
        elevation: 0

      ),
      textTheme: TextTheme(
          labelLarge: TextStyle(
              color: whitecolor,
              fontSize: 22,
              fontWeight: FontWeight.bold),
          titleMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: primary,
          ),
          labelMedium: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: blackcolor),
          bodySmall: TextStyle(
            fontSize: 12,
            color: blackcolor,
      ),
         labelSmall: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: primary
         ),


      )


  );
}
