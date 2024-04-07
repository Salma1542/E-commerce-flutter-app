import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/registeration/view/component/bottom_widget.dart';
import 'package:flutter_application_1/features/auth/registeration/view/component/data_widget.dart';
import 'package:flutter_application_1/features/auth/registeration/view/component/loginPage.dart';


class Rgister extends StatelessWidget {
  const Rgister({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Data_widget() ,
        bottomNavigationBar: SizedBox(child: BottomNavWidget(),height: 100,),
      ),
    );
  }
}
