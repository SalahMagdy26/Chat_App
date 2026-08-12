import 'package:chat_app/auth/components/custom_text_field.dart';
import 'package:chat_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(

        backgroundColor: AppColors.primaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/message-solid-full.svg',
                color: Colors.white,
                width: 150,
              ),
              Gap(30),
              Text(
                'Welcome to chat app',
                style: TextStyle(color: Colors.grey.withAlpha(85), fontSize: 15),
              ),
              Gap(50),
              CustomTextField(hint: 'Email',),
              Gap(20),
              CustomTextField(hint: 'Password',),
              Gap(40),
              GestureDetector(child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent.withAlpha(190),
                  borderRadius: BorderRadius.circular(12),

                ),
                child: Center(child: Text('Login',style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'saira'
                ),)),
              ),)
            ],
          ),
        ),
      ),
    );
  }
}

