import 'package:flutter/material.dart';

class CustomButtonLang extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;
  const CustomButtonLang({super.key, required this.textbutton, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: MaterialButton(          
        onPressed:onPressed,
        height: 56,
        elevation: 6,
        color:const  Color.fromRGBO(80,200,120,1.000),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Text(
          textbutton,
          style: Theme.of(context).textTheme.displaySmall,),
        ),
    );
  }
}
