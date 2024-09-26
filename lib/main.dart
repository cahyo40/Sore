import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sore_book/routes/app_route.dart';
import 'package:sore_book/utils/constants/colors.dart';
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
          colors: colorModel,
          textTheme: GoogleFonts.aBeeZeeTextTheme(),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: colorModel.primary),
        scaffoldBackgroundColor: colorModel.background,
        elevatedButtonTheme: YoButton.dark(colors: colorModel),
        outlinedButtonTheme: YoButton.darkOutline(colors: colorModel),
        inputDecorationTheme: YoTextField.darkOutlined(
          colors: colorModel,
        ),
        cardTheme: YoCard.dark(colors: colorModel),
        textTheme: YoTextTheme.style(
          textTheme: GoogleFonts.aBeeZeeTextTheme(),
          colors: colorModel,
        ),
      ),
      getPages: AppPages.pages,
      initialRoute: AppRoute.SPLASHSCREEN,
    );
  }
}
