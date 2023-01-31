import 'package:flutter/material.dart';
import 'package:notes_app/controller/add_note_model/add_note_prov.dart';
import 'package:provider/provider.dart';
import 'add_note_form.dart';
class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          // this widget to  prevent user's action on UI
          child: AbsorbPointer(
            absorbing: Provider.of<AddNoteProvider>(context).addNoteLoading,
              child: const AddNoteForm()),
        ));
  }
}

