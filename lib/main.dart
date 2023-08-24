import 'package:flutter/material.dart';
import 'package:ui_kit/model/button.dart';
import 'package:ui_kit/widget/button.dart';

import 'model/color.dart';

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
      theme: ThemeData(
        primaryColor: PRIMARY_COLOR,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: PRIMARY_COLOR,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: PRIMARY_COLOR,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Button(
                  onPressed: () {},
                  text: "Primary Button",
                ),
                Button(
                  onPressed: () {},
                  text: "Primary Button",
                  icon: Icons.favorite_outline_outlined,
                ),
                Button(
                  onPressed: () {},
                  text: "Primary Button",
                  icon: Icons.favorite_outline_outlined,
                  isRightIcon: true,
                ),
                Button(
                  onPressed: () {},
                  text: "Secondary Button",
                  variant: ButtonVariant.secondary,
                ),
                Button(
                  onPressed: () {},
                  text: "Secondary Button",
                  variant: ButtonVariant.secondary,
                  icon: Icons.favorite_outline_outlined,
                ),
                Button(
                  onPressed: () {},
                  text: "Secondary Button",
                  variant: ButtonVariant.secondary,
                  icon: Icons.favorite_outline_outlined,
                  isRightIcon: true,
                ),
                Button(
                  onPressed: () {},
                  text: "Tertiary Button",
                  variant: ButtonVariant.tertiary,
                ),
                Button(
                  onPressed: () {},
                  text: "Tertiary Button",
                  variant: ButtonVariant.tertiary,
                  icon: Icons.favorite_outline_outlined,
                ),
                Button(
                  onPressed: () {},
                  text: "Tertiary Button",
                  variant: ButtonVariant.tertiary,
                  icon: Icons.favorite_outline_outlined,
                  isRightIcon: true,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
