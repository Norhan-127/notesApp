import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.grey,
      radius: 20,
    );
  }
}
class ColorsListView extends StatelessWidget {
  const ColorsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 20 * 2,
        child: ListView.builder(itemBuilder: (context,index)=>const ColorItem(),scrollDirection:Axis.horizontal ,));
  }
}
