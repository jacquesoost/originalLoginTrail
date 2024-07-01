import 'package:flutter/material.dart';
import 'package:login_trail1/features/authentication/screens/login/login.dart';
import 'package:login_trail1/utils/theme/theme.dart';
import 'package:get/get.dart';

/// -- Use this class to set up themes, initial bindings, any animations and much more

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        themeMode: ThemeMode.system,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        home: const LoginScreen (),
        
    );
  }
}
