import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:steper_anddroid/Provider_screen/Steper_provider.dart';
import 'package:steper_anddroid/Splash/splash_screen.dart';
import 'View_screen/I_Steper_screen.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => Sizer(
        builder: (context, orientation, deviceType) => MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => Steper_provider(),)
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: "splash",
            routes: {
              "/":(context) => Stapper(),
              "splash":(context) => Splach_screen()
            },
          ),
        )
      ),
      enabled: true,
    ),
  );
}
