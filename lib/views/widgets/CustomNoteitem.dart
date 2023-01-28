import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);
  final itemColor = const [
    Colors.amberAccent,
    Colors.cyan,
    Colors.deepOrangeAccent,
    Colors.green
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3),
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16, right: 8),
      decoration: BoxDecoration(
        color: itemColor[3],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Flutter Tips",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Build your career with Nono',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.6), fontSize: 20),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.delete,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              'May21, 2022',
              style:
                  TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
