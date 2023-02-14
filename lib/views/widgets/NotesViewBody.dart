import 'package:flutter/cupertino.dart';
import 'package:notes_app/views/widgets/NotesListView.dart';
import 'CustomAppbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

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
