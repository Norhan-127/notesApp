import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:provider/provider.dart';
import '../../controller/add_note_model/add_note_prov.dart';
import 'custom_botton.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> _key = GlobalKey();
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AddNoteProvider>(context, listen: false);
    return Form(
      key: _key,
      autovalidateMode: _autoValidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomButton(
              isLoading: provider.addNoteLoading,
              onTap: () {
                if (_key.currentState!.validate()) {
                  _key.currentState!.save();
                  var note = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date: DateTime.now().toString(),
                      color: Colors.amberAccent.value);
                  provider.addNote(note);
                } else {
                  _autoValidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              }),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
