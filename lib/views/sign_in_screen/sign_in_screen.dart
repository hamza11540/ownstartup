import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ownstartup/utils/app_colors.dart';
import 'package:ownstartup/utils/app_constant.dart';

import '../../widgets/main_button.dart';
import '../../widgets/textfield_decoration.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          Positioned(
            right: -20,
            child: Image.asset(
              AppConstant.background,
              height: 650,
              color: AppColors.mainBlue,
            ),
          ),
          Positioned(
            top: 70,
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
            top: 110,
            left: 0,
            right: 0,
            child: Text(
              "Sign In",
              style:
                  GoogleFonts.allura(fontSize: 28, color: AppColors.mainBlack),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: 180,
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
                  controller: email,
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
                  controller: email,
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
                const SizedBox(
                  height: 15,
                ),
                MainButton(
                  callback: () async {
                    //d(notificationService.getFcmToken());
                  },
                  width: double.infinity,
                  height: 60,
                  buttonText: "Sign In",
                  color: AppColors.mainBlue,
                  textColor: AppColors.white,
                )
              ],
            ),
          ),
          Positioned(
            bottom: 190,
            right: 0,
            left: 0,
            child: Text(
              "Forget the Password?",
              style: GoogleFonts.alumniSans(
                fontSize: 16,
                color: AppColors.mainBlack,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            bottom: 140,
            right: 0,
            left: 0,
            child: Text(
              "or Continue with",
              style: GoogleFonts.alumniSans(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            bottom: 70,
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColors.mainBlue)),
                  child: Image.asset( AppConstant.googleIcon, height: 20,),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColors.mainBlue)),
                  child: Image.asset( AppConstant.facebookIcon, height: 20,),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColors.mainBlue)),
                  child: Image.asset( AppConstant.appleIcon, height: 20,),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have account? ",
                  style: GoogleFonts.alumniSans(
                      fontSize: 18, color: Color(0xff6e7B88)),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Sign up",
                    style: GoogleFonts.alumniSans(
                        fontSize: 18,
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
    );
  }
}
