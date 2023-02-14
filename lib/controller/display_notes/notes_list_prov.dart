import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/models/note_model.dart';

import '../../utilities/constants.dart';

class DisplayNotesModel with ChangeNotifier {
   List<NoteModel> notes=[];
   Color color=AppColors.maize;
  fetchAllNotes() {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      notes = notesBox.values.toList();
      notifyListeners();
      debugPrint('Notes has been displayed successfully!');
    }catch(e){
      debugPrint(e.toString());
    }
  }
  changeColor(NoteModel note){
    note.color=color.value;
    notifyListeners();
  }
}
