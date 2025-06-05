import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stroll_interview/bloc/question_answer/question_answer_bloc.dart';
import 'package:stroll_interview/bloc/question_answer/question_answer_event.dart';
import 'package:stroll_interview/bloc/question_answer/question_answer_state.dart';

class MultipleChoiceButton extends StatelessWidget {
  const MultipleChoiceButton({
    super.key,
    required this.optionLabel,
    required this.optionText,
    required this.value,
  });
  final String optionLabel;
  final String optionText;
  final String value;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionAnswerBloc, QuestionAnswerState>(
      builder: (context, state) {
        String? selectedAnswer;
        if (state is UpdatedAnswer) {
          selectedAnswer = state.selectedOption;
        }
        return Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              context.read<QuestionAnswerBloc>().add(UpdateAnswerEvent(value));
            },
            borderRadius: BorderRadius.circular(12),
            child: Ink(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                border:
                    selectedAnswer == value
                        ? Border.all(
                          width: 2,
                          color: Theme.of(context).colorScheme.primary,
                        )
                        : null,
                color: Color.fromRGBO(35, 42, 46, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color:
                          selectedAnswer == value
                              ? Theme.of(context).colorScheme.primary
                              : null,
                      border:
                          selectedAnswer == value
                              ? null
                              : Border.all(
                                color: Color.fromRGBO(196, 196, 196, 1),
                              ),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      optionLabel,
                      style: TextStyle(
                        fontSize: 12,
                        color:
                            selectedAnswer == value
                                ? Colors.white
                                : Color.fromRGBO(196, 196, 196, 1),
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      optionText,
                      style: TextStyle(color: Color.fromRGBO(196, 196, 196, 1)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
