import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:music_listener/screens/playlist_screen.dart';
import 'package:music_listener/screens/registration_screen.dart';
import 'package:music_listener/widget/custom_button.dart';
import 'package:music_listener/widget/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              SvgPicture.asset('images/loginpage_image.svg'),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Text(
                'Log in',
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
              CustomTextField(hintText: 'Email'),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              CustomTextField(hintText: 'Secret Id'),
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              CustomButton(
                text: 'Log In',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PlaylistScreen()), // Navigate to NextPage
                  );
                },
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
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistrationScreen()), // Navigate to NextPage
                  );
                },
                child: Text(
                  'Register',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFFF794F),
                    fontSize: 14,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w500,
                    height: 0.08,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
