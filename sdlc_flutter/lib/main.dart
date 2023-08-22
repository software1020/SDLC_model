import 'package:flutter/material.dart';
import 'package:sdlc_flutter/account/profile_setup.dart';
import 'package:sdlc_flutter/settings/change_country.dart';
import 'package:sdlc_flutter/settings/change_language_page.dart';
import 'package:sdlc_flutter/settings/change_password_page.dart';
import 'package:sdlc_flutter/settings/legal_about_page.dart';
import 'package:sdlc_flutter/settings/notifications_settings_page.dart';
import 'package:sdlc_flutter/settings/settings_page.dart';
import 'package:sdlc_flutter/welcome_screens/login-screen.dart';
import 'package:sdlc_flutter/welcome_screens/onboarding-screen.dart';
import 'package:sdlc_flutter/welcome_screens/signup.dart';
import 'package:sdlc_flutter/welcome_screens/splash-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GreenPurse',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const AppLoader(), // Show the AppLoader initially
        '/login': (context) => const LoginScreen(),
        '/onboardingscreen': (context) => const OnboardingScreen(),
        '/signup': (context) => const RegistrationScreen(),
        '/changecountry': (context) => const ChangeCountryPage(),
        '/changelanguage': (context) => const ChangeLanguagePage(),
        '/changepassword': (context) => const ChangePasswordPage(),
        '/legalabout': (context) => const LegalAboutPage(),
        '/notificationsettings': (context) => const NotificationSettingsPage(),
        '/settings': (context) => const SettingsPage(),
        '/profile-setup': (context) => const ProfileSetupScreen(authToken: '',),

      },
    );
  }
}

class AppLoader extends StatefulWidget {
  const AppLoader({Key? key}) : super(key: key);

  @override
  _AppLoaderState createState() => _AppLoaderState();
}

class _AppLoaderState extends State<AppLoader> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulate the loading process
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading ? const SplashScreen() : const OnboardingScreen();
  }
}
