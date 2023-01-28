import 'package:flutter/material.dart';

class CustomSearchIocn extends StatelessWidget {
  const CustomSearchIocn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.04),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(child: Icon(Icons.search)),
    );
  }
}
