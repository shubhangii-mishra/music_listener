import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_listener/widget/custom_button.dart';
import 'package:music_listener/widget/custom_textfield.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 10,
              vertical: MediaQuery.of(context).size.height / 10),
          child: Column(
            children: [
              Text(
                'Music Lister App',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF78746D),
                  fontSize: 30,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              SvgPicture.asset('images/registrationscreen_image.svg'),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                'Register',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF3B3936),
                  fontSize: 24,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w500,
                  height: 0.06,
                  letterSpacing: -0.50,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              CustomTextField(hintText: 'Name'),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              CustomTextField(hintText: 'Email'),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              CustomButton(
                text: 'Register',
                onPressed: () {},
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              Text(
                'New to Music Lister?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF78746D),
                  fontSize: 14,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w500,
                  height: 0.08,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                'Log In',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFF794F),
                  fontSize: 14,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w500,
                  height: 0.08,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
