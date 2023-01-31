import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/utilities/constants.dart';
class AddNoteProvider with ChangeNotifier{
  bool addNoteLoading=false;
  addNote(NoteModel note) async{
    try {
      addNoteLoading = true;
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      debugPrint('Note has been added successfully!');
      addNoteLoading = false;
      notifyListeners();
    }catch(e){
      addNoteLoading=false;
      debugPrint(e.toString());
    }
  }
}