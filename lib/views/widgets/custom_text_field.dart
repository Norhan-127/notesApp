import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: Colors.green,
      decoration: InputDecoration(
        hintText: 'Title',
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(Colors.green),
      ),
    );
  }
}
OutlineInputBorder buildBorder([color]){
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide:  BorderSide(color: color??Colors.white)
  );
}