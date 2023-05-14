import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class MainButton extends StatelessWidget {
  final double? height, width, borderRadius;
  final String? buttonText;
  final VoidCallback? callback;
  final bool useGradient;
  final Color? buttonColor;
  final TextStyle? buttonStyle;
  final Color? color;
  final Color? textColor;
  const MainButton(
      {Key? key,
      this.buttonText,
      this.useGradient = true,
      this.buttonStyle,
      this.buttonColor,
      this.borderRadius,
      this.callback,
      this.width,
      this.height,
      this.color,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: MaterialButton(
        minWidth: width,
        height: height,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        onPressed: callback,
        child: Text(
          buttonText!,
          style: GoogleFonts.alumniSans(fontSize: 22, fontWeight: FontWeight.w500, color: textColor),
        ),
      ),
    );
  }
}
