import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ownstartup/utils/app_colors.dart';

import '../../widgets/textfield_decoration.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/4BFCDB8D-9DC5-495A-BE87-55776F40D8F3_1_201_a-removebg-preview.png",
              height: 120,
              color: AppColors.mainBlue,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Sign In",
              style: GoogleFonts.armata(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.mainBlack),
            ),
            TextFormField(
              cursorColor: Colors.black,
              style: const TextStyle(color: Colors.black),


              decoration: customInputDecoration(
                  hintText: "Email",
                  hintTextStyle:
                  GoogleFonts.armata(color: Colors.black, fontSize: 12)),
              validator: (text) {
                if (text == null || text.trim().isEmpty) {
                  return 'please enter your email';
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
