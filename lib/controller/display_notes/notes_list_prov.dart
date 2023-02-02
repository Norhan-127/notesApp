import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

class DisplayNotesModel with ChangeNotifier{
   final List<NoteModel> notes;
   DisplayNotesModel(this.notes);
}