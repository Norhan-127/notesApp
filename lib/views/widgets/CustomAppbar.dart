import 'package:flutter/material.dart';

import 'CustomSearchicon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon}) : super(key: key);
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Text(title,style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 30),),
          CustomSearchIocn(icon: icon,),
        ],
      ),
    );
  }
}


