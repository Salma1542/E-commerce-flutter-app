import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/registeration/view/page/registeration.dart';
import 'package:flutter_application_1/features/auth/registeration/view/component/loginPage.dart';
import 'package:flutter_application_1/features/auth/registeration/view/component/forget_password.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Rgister(),
     );
 
  }
  
}


