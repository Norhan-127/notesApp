import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key,required this.hint,this.maxLines=1}) : super(key: key);
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines: maxLines,
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