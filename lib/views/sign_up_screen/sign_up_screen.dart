import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_colors.dart';
import '../../widgets/main_button.dart';
import '../../widgets/textfield_decoration.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: Stack(
          children: [
            Positioned(
              right: -20,
              child: Image.asset(
                "assets/APPLEHOLIC.png",
                height: 650,
                color: AppColors.mainBlue,
              ),
            ),
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Text(
                "Welcome to Appleholic",
                style: GoogleFonts.allura(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppColors.mainBlack),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 140,
              left: 0,
              right: 0,
              child: Text(
                "Sign In",
                style: GoogleFonts.allura(
                    fontSize: 28, color: AppColors.mainBlack),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 220,
              left: 20,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: GoogleFonts.alumniSans(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColors.mainBlack),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    style: const TextStyle(color: Colors.black),

                    decoration: customInputDecoration(
                        hintText: "Email",
                        hintTextStyle: GoogleFonts.alumniSans(
                            color: Colors.black, fontSize: 12)),
                    validator: (text) {
                      if (text == null || text.trim().isEmpty) {
                        return 'please enter your email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Password",
                    style: GoogleFonts.alumniSans(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColors.mainBlack),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    style: const TextStyle(color: Colors.black),

                    decoration: customInputDecoration(
                        hintText: "Password",
                        hintTextStyle: GoogleFonts.alumniSans(
                            color: Colors.black, fontSize: 12)),
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
            Positioned(
              bottom: 230,
              right: 20,
              child: Text(
                "Forget Password?",
                style: GoogleFonts.alumniSans(
                    fontSize: 16,
                    color: AppColors.mainBlack,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              bottom: 140,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account? ",
                    style: GoogleFonts.alumniSans(
                        fontSize: 20, color: Color(0xff6e7B88)),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Sign up",
                      style: GoogleFonts.alumniSans(
                          fontSize: 20,
                          color: AppColors.mainBlue,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(12.0),
          child: MainButton(
            callback: () async {
              //d(notificationService.getFcmToken());
            },
            width: double.infinity,
            height: 50,
            buttonText: "Sign In",
            color: AppColors.mainBlue,
            textColor: AppColors.white,
          ),
        ));
  }
}
