import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/utilities/constants.dart';
class AddNoteProvider with ChangeNotifier{
   bool addNoteLoading=false;
   Color color=AppColors.maize;
  addNote(NoteModel note) async{
    try {
      note.color=color.value;
      addNoteLoading = true;
      notifyListeners();
      debugPrint ('Loading') ;
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      debugPrint('Note has been added successfully!');
      addNoteLoading = false;
      notifyListeners();
    }catch(e){
      addNoteLoading=false;
      debugPrint(e.toString());
      notifyListeners();
    }
  }
}