import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onTap, required this.isLoading})
      : super(key: key);
  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        height: MediaQuery.of(context).size.width * 0.15,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: isLoading
                ? const CircularProgressIndicator(
                    color: Colors.grey,
                  )
                : const Text(
                    'Add',
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  )),
      ),
    );
  }
}
