import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final Color color;
  final TextStyle? style;
  final Function()? onPressed;

  const CustomButtonAuth(
      {super.key, required this.text, required this.color, this.onPressed, this.style});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(2),
      height: 55,
      width: 100,
      child: MaterialButton(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        padding: const EdgeInsets.all(10),
        color: color,
        onPressed: onPressed,
        child: Text(text, style: style,),
      ),
    );
  }
}
