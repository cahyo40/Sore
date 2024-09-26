import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sore_book/routes/app_route.dart';
import 'package:yo_package/yo_package.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(),
      darkTheme: ThemeData(
        appBarTheme: YoAppbar.dark(
          colors: YoColors.darkGreen,
          textTheme: GoogleFonts.aBeeZeeTextTheme(),
        ),
        colorScheme:
            ColorScheme.fromSeed(seedColor: YoColors.darkGreen.primary),
        scaffoldBackgroundColor: YoColors.darkGreen.background,
        elevatedButtonTheme: YoButton.dark(colors: YoColors.darkGreen),
        outlinedButtonTheme: YoButton.darkOutline(colors: YoColors.darkGreen),
        inputDecorationTheme: YoTextField.darkOutlined(
          colors: YoColors.darkGreen,
        ),
        cardTheme: YoCard.dark(colors: YoColors.darkGreen),
        textTheme: YoTextTheme.style(
          textTheme: GoogleFonts.aBeeZeeTextTheme(),
        ),
      ),
      getPages: AppPages.pages,
      initialRoute: AppRoute.SPLASHSCREEN,
    );
  }
}
