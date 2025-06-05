abstract class QuestionAnswerState {}

class InitialAnswer extends QuestionAnswerState {}

class UpdatedAnswer extends QuestionAnswerState {
  final String selectedOption;

  UpdatedAnswer({required this.selectedOption});
}
