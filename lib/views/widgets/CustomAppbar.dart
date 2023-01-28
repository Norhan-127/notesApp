import 'package:flutter/material.dart';

import 'CustomSearchicon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Notes',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
          ),
          CustomSearchIocn(),
        ],
      ),
    );
  }
}
