import 'package:borsa_app/common/bottom_app_navigation.dart';
import 'package:borsa_app/core/theme/app_theme.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Veri Çekme Örneği',
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(
        colors: myLightColors ,
        subThemesData:const FlexSubThemesData(
          elevatedButtonRadius: 12,
          inputDecoratorRadius: 12,
          useMaterial3Typography: true
        )
      ),
       darkTheme: FlexThemeData.dark(
        colors: myDarkColors, // Dark renk paleti
        subThemesData: const FlexSubThemesData(
          elevatedButtonRadius: 12,
          inputDecoratorRadius: 12,
          useMaterial3Typography: true,
        ),
      ),
      themeMode: ThemeMode.light,
      home:BottomAppNavigation()
    );
  }
}
