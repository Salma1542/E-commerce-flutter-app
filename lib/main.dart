import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/onboarding/view/page/onboarding_page.dart';
import 'package:flutter_application_1/features/auth/registeration/view/page/registeration.dart';
import 'package:flutter_application_1/features/auth/registeration/view/component/loginPage.dart';
import 'package:flutter_application_1/features/auth/registeration/view/component/forget_password.dart';
import 'package:flutter_application_1/features/auth/verification/view/page/verification_page.dart';
import 'package:flutter_application_1/features/dashboard/view/page/dashboard_page.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);

  // runApp(MaterialApp());
  SharedPreferences sharedPrefrences = await SharedPreferences.getInstance();
  bool onBoarding = sharedPrefrences.getBool('onboarding') ?? false;
  MaterialApp materialApp = MaterialApp(
    // home: onBoarding ? Rgister() : OnBoardingPage(),
    builder: DevicePreview.appBuilder,
    useInheritedMediaQuery: true,
    onGenerateRoute: MyRoutes.onGenerateRoute,
    onGenerateInitialRoutes: (_) => MyRoutes.initRoutes,
  );
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => materialApp, // Wrap your app
    ),
  );
}

class MyRoutes {
  static List<Route> initRoutes = [
    MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const OnBoardingPage()),
    MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const Rgister()),
    MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const DashbordPage()),
  ];
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'login':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => loginPage());
      case 'registration':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => Rgister());
      default:
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => OnBoardingPage());
    }
  }
}
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   bool onBoarding = sharedPreferences.getBool('onboarding') ?? false;

//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: onBoarding ? Rgister() : OnBoardingPage(),
//   ));
// }

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
//   }
// }

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Delay navigation by 1 second (adjust the duration as needed)
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                OnBoardingPage()), // Navigate to the registration screen
      );
    });

    return Scaffold(
        body: Center(
      child: Image.asset(
          'assets/images/favplant.jpg'), // Display the splash screen image
    ));
  }
}
