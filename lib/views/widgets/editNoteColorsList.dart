import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import '../../utilities/constants.dart';
import 'colors_listview.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({Key? key, required this.note}) : super(key: key);

  final NoteModel note;
  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int currentIndex;
  @override
  void initState() {
    super.initState();
    currentIndex=kColorsList.indexOf(Color(widget.note.color));
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 27 * 2,
        child: ListView.builder(
          itemCount: kColorsList.length,
          itemBuilder: (context, index) =>  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: (){
                currentIndex=index;
                widget.note.color=kColorsList[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: kColorsList[index],
                isActive: currentIndex==index,
              ),
            ),
          ),
          scrollDirection: Axis.horizontal,
        ));
  }
}
