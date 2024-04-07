import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/registeration/view/component/loginPage.dart';
import 'package:flutter_application_1/features/auth/registeration/view/component/verification_page.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});

  @override
  Widget     build(BuildContext context) {
    return Column(
      children: [
        FilledButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                    const Color.fromARGB(255, 232, 126, 162))),
            onPressed: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OTPPage()),
                );
            },
            child: Text("confirm")),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Have an Account?",
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => loginPage()),
                );
              },
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => loginPage()),
                    );
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Color.fromARGB(255, 232, 126, 162),
                        decoration: TextDecoration.underline,
                        decorationColor: Color.fromARGB(
                          255,
                          232,
                          126,
                          162,
                        )),
                  )),
            ),
          ],
        )
      ],

    );
  }
}
