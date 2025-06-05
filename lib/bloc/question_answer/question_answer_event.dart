abstract class QuestionAnswerEvent {}

class UpdateAnswerEvent extends QuestionAnswerEvent {
  final String selectedOption;

  UpdateAnswerEvent(this.selectedOption);
}
