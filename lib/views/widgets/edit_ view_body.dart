import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/CustomAppbar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: const [
          CustomAppBar(title: 'Edit',icon: CupertinoIcons.checkmark_alt,),
          SizedBox(height: 32,),
          CustomTextField(hint: 'Title'),
          SizedBox(height: 16,),
          CustomTextField(hint: 'Content',maxLines: 5,),
        ],
      ),
    );
  }
}
