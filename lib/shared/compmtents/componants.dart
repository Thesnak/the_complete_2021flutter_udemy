import 'package:flutter/material.dart';

Widget defualtButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 3.0,
  @required Function function,
  @required String text,
}) {
  return Container(
      width: width,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ));
}

Widget defaultFormField({
  @required TextEditingController controller,
  @required TextInputType type,
  @required Function validate,
  @required String labelText,
  @required IconData prefix,
  IconData suffix,
  bool isPassword=false,
  Function onSubmit,
  Function onChange,
  Function suffixPressed,

}) {
  return TextFormField(
    controller: controller,
    obscureText: isPassword,
    decoration: InputDecoration(
//hintText: "Email address",
      labelText: labelText,
      prefixIcon: Icon(
        prefix,
      ),
      suffixIcon: suffix != null ?IconButton(
        onPressed: suffixPressed,
        icon: Icon(
          suffix,
        ),
      ):null,
      border: OutlineInputBorder(),
    ),
    keyboardType: type,
    onFieldSubmitted: onSubmit,
    onChanged: onChange,
    validator: validate,
  );
}
