import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/controller/display_notes/notes_list_prov.dart';
import 'package:notes_app/views/widgets/NotesViewBody.dart';
import 'package:notes_app/views/widgets/add_note_buttom_sheet.dart';
import 'package:provider/provider.dart';

class NotesView extends StatefulWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      Provider.of<DisplayNotesModel>(context,listen: false).fetchAllNotes();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        backgroundColor: Colors.green,
        child: const Icon(CupertinoIcons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
