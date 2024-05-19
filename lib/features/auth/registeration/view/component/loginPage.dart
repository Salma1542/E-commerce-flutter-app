import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/registeration/view/component/my-putton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_1/features/auth/registeration/view/page/forget_password.dart';
import 'package:flutter_application_1/features/dashboard/view/page/dashboard_page.dart';
import 'package:flutter_application_1/features/auth/registeration/controller/cubit/registration_cubit.dart';

class loginPage extends StatelessWidget {
  loginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn(BuildContext context) {
    // Perform your authentication logic here (e.g., API call, validation)

    // Navigate to the Dashboard page after successful sign-in
    Navigator.pushReplacementNamed(context, 'dashboard');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Icon(
                Icons.lock,
                size: 100,
                color: const Color.fromARGB(255, 128, 127, 127),
              ),
              const SizedBox(height: 50),
              Text(
                'Welcome back to login page!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 100, 150, 220)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 128, 127, 127)),
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: 'Username',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 100, 150, 220)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 128, 127, 127)),
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    hintText: 'Password',
                  ),
                  obscureText: true,
                  obscuringCharacter: "*",
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ForgotPassPage()),
                        );
                      },
                      child: const Text(
                        "Forget Password?",
                        style: TextStyle(
                          color: Color.fromARGB(255, 232, 126, 162),
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(255, 232, 126, 162),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              MyButton(
                onTap: () => signUserIn(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
