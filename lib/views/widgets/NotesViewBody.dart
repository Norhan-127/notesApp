import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomAppbar.dart';
import 'CustomNoteitem.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: const [
            CustomAppBar(),
            NoteItem(),
          ],
        ),
      ),
    );
  }
}


