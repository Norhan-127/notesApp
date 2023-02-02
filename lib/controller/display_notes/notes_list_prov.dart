import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/models/note_model.dart';

import '../../utilities/constants.dart';

class DisplayNotesModel with ChangeNotifier{

   late List<NoteModel> notes;

   fetchAllNotes(){
      try {
         var notesBox = Hive.box<NoteModel>(kNotesBox);
         notes=notesBox.values.toList();
         notifyListeners();
         debugPrint('Notes has been displayed successfully!');
      }catch(e){
         debugPrint(e.toString());
      }
   }
}