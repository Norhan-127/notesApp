abstract class AddNoteStates {}

class AddNotesInitial extends AddNoteStates {}

class AddNotesLoading extends AddNoteStates {}

class AddNotesSuccess extends AddNoteStates {}

class AddNotesFailure extends AddNoteStates {
  final String errMessage;

  AddNotesFailure(this.errMessage);
}
