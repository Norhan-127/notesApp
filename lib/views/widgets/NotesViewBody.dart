import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/controller/display_notes/notes_list_prov.dart';
import 'package:notes_app/views/widgets/NotesListView.dart';
import 'package:provider/provider.dart';

import 'CustomAppbar.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      Provider.of<DisplayNotesModel>(context,listen: false).fetchAllNotes();

    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: const [
            CustomAppBar(title: 'Notes',icon: CupertinoIcons.search,),
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}
