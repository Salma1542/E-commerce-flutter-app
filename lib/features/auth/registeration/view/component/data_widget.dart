import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utilis/vlidation.dart';

class Data_widget extends StatelessWidget {
   Data_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        Column(
          children: [
             Image.network("https://th.bing.com/th/id/R.626588307129b58ccc8316f2b5393c0b?rik=79Y0AWZPuRerug&pid=ImgRaw&r=0",
      height: 90,
      width: 90,
      ),

      Text("Sign up here", style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,),)
          ],
      
     
      ),
      SizedBox(height: 60),

        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: TextEditingController(),
          keyboardType: TextInputType.name,
          validator:Rgisteration_validation().name_validate ,
          decoration: InputDecoration(
            label: Text("First Name"),
            hintText: "Enter your first name",
            prefix: Icon(Icons.abc),
            border:OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
                width: 2
              ),
              borderRadius: BorderRadius.circular(30)
            ),
               focusedBorder:OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue,
                width: 2
              ),
              borderRadius: BorderRadius.circular(10)
            ),
               errorBorder:OutlineInputBorder(
              borderSide:const BorderSide(
                color: Colors.red,
                width: 2
              ),
              borderRadius: BorderRadius.circular(30)
            )
          ),
        ),
        SizedBox(height: 50,),
         TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: TextEditingController(),
          keyboardType: TextInputType.name,
          validator:Rgisteration_validation().name_validate ,
          decoration:decoration.copyWith(
            labelText: "Last Name",
          )
        ),
                SizedBox(height: 50,),

          TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: TextEditingController(),
          keyboardType: TextInputType.name,
          validator:Rgisteration_validation_email().email_validate ,
          decoration:decoration.copyWith(
            labelText: "Mail",
            hintText: "xxxxx @gmail.com",
            prefixIcon: Icon(Icons.mail),

          )
          ),
          SizedBox(height: 50),
            TextFormField(

          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: TextEditingController(),
          keyboardType: TextInputType.name,
          validator:Rgisteration_validation_password().password_validate ,
          decoration:decoration.copyWith(
            labelText: "Password",
            hintText: "Enter your password",
            prefixIcon: Icon(Icons.lock),
            

          ),
          obscureText: true,
          obscuringCharacter: "*",
          ),

        
      ],
    );
  }
  InputDecoration decoration=InputDecoration(
            hintText: "Enter your last name",
            prefix: Icon(Icons.abc),
            border:OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.green,
                width: 2
              ),
              borderRadius: BorderRadius.circular(30)
            ),
               focusedBorder:OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color.fromRGBO(33, 150, 243, 1),
                width: 2
              ),
              borderRadius: BorderRadius.circular(10)
            ),
               errorBorder:OutlineInputBorder(
              borderSide:const BorderSide(
                color: Colors.red,
                width: 2
              ),
              borderRadius: BorderRadius.circular(30)
            ),
          );
}