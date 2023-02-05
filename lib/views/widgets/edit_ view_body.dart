import 'package:flutter/cupertino.dart';
import 'package:notes_app/controller/display_notes/notes_list_prov.dart';
import 'package:notes_app/views/widgets/CustomAppbar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:provider/provider.dart';

import '../../models/note_model.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
   String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit',
            icon: CupertinoIcons.checkmark_alt,
            onPressed: () {
              widget.note.title=title?? widget.note.title;
              widget.note.subtitle=content??widget.note.subtitle;
              widget.note.save();
              Provider.of<DisplayNotesModel>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
              hint: widget.note.subtitle,
              maxLines: 5,
              onChanged: (value) {
                content = value;
              }),
        ],
      ),
    );
  }
}
