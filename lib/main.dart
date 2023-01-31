import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/controller/add_note_model/add_note_prov.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/utilities/constants.dart';
import 'package:notes_app/views/NotesView.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => AddNoteProvider()),
  ], child: const NotesApp()));
  await Hive.initFlutter();
  await Hive.openBox<NoteModel>(kNotesBox);
  //tell Hive to start storing note model--> Hive.registerAdapter(adapter)
  Hive.registerAdapter(NoteModelAdapter());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesView(),
    );
  }
}
