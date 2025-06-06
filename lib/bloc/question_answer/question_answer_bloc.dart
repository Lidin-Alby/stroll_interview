import 'package:flutter_bloc/flutter_bloc.dart';

import 'question_answer_event.dart';
import 'question_answer_state.dart';

class QuestionAnswerBloc
    extends Bloc<QuestionAnswerEvent, QuestionAnswerState> {
  QuestionAnswerBloc() : super(InitialAnswerState()) {
    on<UpdateAnswerEvent>((event, emit) {
      emit(UpdatedAnswerState(selectedOption: event.selectedOption));
    });
  }
}
