import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stroll_interview/bloc/next%20question/next_question_event.dart';
import 'package:stroll_interview/bloc/next%20question/next_question_state.dart';

class NextQuestionBloc extends Bloc<QuestionEvent, NextQuestionState> {
  NextQuestionBloc() : super(NextQuestionState(0)) {
    on<QuestionEvent>((event, emit) {
      emit(NextQuestionState(state.index + 1));
    });
  }
}
