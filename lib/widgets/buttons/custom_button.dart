import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final double buttonWidth;
  final Color buttonColor;
  final Color textColor;
  final double? buttonHeight;
  final bool? isBorder;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    required this.buttonWidth,
    required this.buttonColor,
    required this.textColor, this.buttonHeight, this.isBorder,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          side: (isBorder??false)? BorderSide(color: Color(0xFFbae6fd), width: .8):null,
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(buttonText, style: TextStyle(color: textColor)),
      ),
    );
  }
}
