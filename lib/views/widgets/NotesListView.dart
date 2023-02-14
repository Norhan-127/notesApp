import 'package:flutter/material.dart';
import 'package:notes_app/controller/display_notes/notes_list_prov.dart';
import 'package:provider/provider.dart';

import 'CustomNoteitem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var notes=Provider.of<DisplayNotesModel>(context).notes;
    return ListView.builder(
        itemCount:notes.length ,
        itemBuilder: (context, index) {
          return  NoteItem(note: notes[index],);
        });
  }
}
