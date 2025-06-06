abstract class QuestionAnswerState {}

class InitialAnswerState extends QuestionAnswerState {}

class UpdatedAnswerState extends QuestionAnswerState {
  final String selectedOption;

  UpdatedAnswerState({required this.selectedOption});
}
