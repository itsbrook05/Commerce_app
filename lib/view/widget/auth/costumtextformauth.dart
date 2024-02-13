import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final bool? isPassword;
  final IconData? iconData;
  final TextEditingController mycontroller;
  final String? Function(String?) valid;
  final TextInputType textInputType;
  final void Function()? onTapIcon;

  const CustomTextFormAuth(
      {super.key,
      required this.hinttext,
      required this.labeltext,
      this.iconData,
      required this.mycontroller,
      required this.valid,
      required this.textInputType,  this.isPassword, this.onTapIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword==null || isPassword==false ? false : true,
      keyboardType: textInputType,
      validator: valid,
      controller: mycontroller,
      decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(fontSize: 16),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(labeltext)),
          suffixIcon: InkWell(onTap:onTapIcon ,child: Icon(iconData,),),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(15))),
    );
  }
}
