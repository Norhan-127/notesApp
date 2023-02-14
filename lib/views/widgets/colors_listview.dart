import 'package:flutter/material.dart';
import 'package:notes_app/controller/add_note_model/add_note_prov.dart';
import 'package:notes_app/utilities/constants.dart';
import 'package:provider/provider.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.isActive, required this.color}) : super(key: key);
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ?  CircleAvatar(
            backgroundColor: Colors.white,
            radius: 25,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 22,
            ),
          )
        :  CircleAvatar(
            backgroundColor: color,
            radius: 25,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({Key? key, required this.isActive}) : super(key: key);
  final bool isActive;

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex=0;
  List<Color> colors=[AppColors.maize,AppColors.pink,AppColors.celadon,AppColors.violet,AppColors.blue];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 25 * 2,
        child: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) =>  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: (){
                currentIndex=index;
                Provider.of<AddNoteProvider>(context,listen: false).color=colors[index];
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isActive: currentIndex==index,
              ),
            ),
          ),
          scrollDirection: Axis.horizontal,
        ));
  }
}
