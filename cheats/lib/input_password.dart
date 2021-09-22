import 'package:autopecas/constants.dart';
import 'package:flutter/material.dart';

class InputPassword extends StatefulWidget {
  InputPassword({
    Key? key,
    this.hintText,
    this.press,
  }) : super(key: key);
  final String? hintText;
  final Function? press;

  @override
  _InputPasswordState createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  TextEditingController passwordController = TextEditingController();

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
      child: TextField(
        obscureText: _isObscure,
        controller: passwordController,
        decoration: InputDecoration(
          suffixIcon: IconButton(
              icon: Icon(
                _isObscure ? Icons.visibility_off : Icons.visibility,
                color: kTextColor,
              ),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              }),
          fillColor: Color(0XFFEEEEF8),
          filled: true,
          enabledBorder: new OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: new BorderSide(color: Colors.grey, width: 1)),
          focusedBorder: new OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: new BorderSide(color: Colors.grey, width: 1)),
          hintText: widget.hintText,
        ),
      ),
    );
  }
}
