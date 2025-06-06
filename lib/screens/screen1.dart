import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stroll_interview/bloc/next%20question/next_question_bloc.dart';
import 'package:stroll_interview/bloc/next%20question/next_question_event.dart';
import 'package:stroll_interview/bloc/next%20question/next_question_state.dart';
import 'package:stroll_interview/models/my_icon.dart';
import 'package:stroll_interview/models/question_answer.dart';
import 'package:stroll_interview/widgets/bottom_navigation_button.dart';
import 'package:stroll_interview/widgets/multiple_choice_button.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    List<QuestionAnswer> questionAnswers = [
      QuestionAnswer(
        option1: 'The peace in the early mornings',
        option2: 'The magical golden hours',
        option3: 'Wind-down time after dinners',
        option4: 'The serinity past midnight',
        givenAnswer: 'Mine is definitely the peace in the morning.',
        question: 'What is your favourite time of day?',
      ),
    ];
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/background.jpg', fit: BoxFit.cover),

          // SafeArea(
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 20),
          //     child: LinearProgressIndicator(
          //       borderRadius: BorderRadius.circular(5),
          //       minHeight: 6,
          //       color: Color.fromRGBO(130, 130, 255, 1),
          //       value: 0.2,
          //       backgroundColor: const Color.fromARGB(131, 255, 255, 255),
          //     ),
          //   ),
          // ),
          Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(0, 0, 0, 0.4),
                        Color.fromRGBO(0, 0, 0, 0.3),

                        Color.fromRGBO(0, 0, 0, 0),
                        Color.fromRGBO(0, 0, 0, 0),

                        Color.fromRGBO(0, 0, 0, 0.0),
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 65),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Stroll Bonfire',
                            style: TextStyle(
                              color: Color.fromRGBO(204, 200, 255, 1),
                              shadows: [
                                BoxShadow(
                                  blurRadius: 2,
                                  color: Color.fromRGBO(190, 190, 190, 1),
                                ),
                                BoxShadow(
                                  blurRadius: 7.9,
                                  color: Color.fromRGBO(0, 0, 0, 0.2),
                                ),
                                BoxShadow(
                                  blurRadius: 20,
                                  offset: Offset(0, 2),
                                  color: Color.fromRGBO(0, 0, 0, 0.2),
                                ),
                              ],
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0, left: 3),
                            child: Icon(
                              shadows: [
                                BoxShadow(
                                  blurRadius: 5,
                                  offset: Offset(0, .3),
                                  color: Color.fromRGBO(0, 0, 0, 0.2),
                                ),
                              ],
                              Icons.keyboard_arrow_down_rounded,
                              color: Color.fromRGBO(203, 201, 255, 1),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SvgPicture.asset('assets/icons/timer.svg'),
                          SizedBox(width: 3),

                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              '22h 00m',
                              style: TextStyle(
                                fontSize: 12,
                                shadows: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.2),
                                    blurRadius: 4,
                                    offset: Offset(0, 1),
                                  ),
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.3),
                                    blurRadius: 1,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          SvgPicture.asset(myIcons[MyIcon.user]),
                          SizedBox(width: 3),
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              '103',
                              style: TextStyle(
                                fontSize: 12,
                                shadows: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.2),
                                    blurRadius: 4,
                                    offset: Offset(0, 1),
                                  ),
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.3),
                                    blurRadius: 1,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(top: 70),

                decoration: BoxDecoration(
                  color: Colors.black,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.05, 0.2, 0.3, 1, 1],
                    colors: [
                      Color.fromRGBO(0, 0, 0, 0.0),
                      Color.fromRGBO(0, 0, 0, 0.7),

                      Color.fromRGBO(0, 0, 0, 1),

                      Color.fromRGBO(0, 0, 0, 0.9),
                      Color.fromRGBO(0, 0, 0, 0.1),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                  child: BlocBuilder<NextQuestionBloc, NextQuestionState>(
                    builder: (context, state) {
                      int index = state.index;

                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                    'assets/images/Joey.jpg',
                                  ),
                                  radius: 25,
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 5),
                                      Text(
                                        'Angelina, 28',
                                        style: TextStyle(
                                          color: Color.fromRGBO(
                                            245,
                                            245,
                                            245,
                                            1,
                                          ),
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          questionAnswers[index].question,
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                              245,
                                              245,
                                              245,
                                              1,
                                            ),
                                            height: 1,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              '"${questionAnswers[index].givenAnswer}"',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 12,
                                color: Color.fromRGBO(203, 201, 255, 0.7),
                              ),
                            ),
                          ),
                          SizedBox(height: 3),
                          Row(
                            spacing: 12,
                            children: [
                              Expanded(
                                child: MultipleChoiceButton(
                                  optionLabel: 'A',
                                  optionText: questionAnswers[index].option1,
                                  value: 'A',
                                ),
                              ),
                              Expanded(
                                child: MultipleChoiceButton(
                                  optionLabel: 'B',
                                  optionText: questionAnswers[index].option2,
                                  value: 'B',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          Row(
                            spacing: 12,
                            children: [
                              Expanded(
                                child: MultipleChoiceButton(
                                  optionLabel: 'C',
                                  optionText: questionAnswers[index].option3,
                                  value: 'C',
                                ),
                              ),
                              Expanded(
                                child: MultipleChoiceButton(
                                  optionLabel: 'D',
                                  optionText: questionAnswers[index].option4,
                                  value: 'D',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              Text(
                                'Pick your option.\nSee who has a similar mind.',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(229, 229, 229, 1),
                                ),
                              ),
                              Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: IconButton(
                                  iconSize: 33,
                                  onPressed: () {},
                                  icon: SvgPicture.asset(
                                    'assets/icons/mic.svg',
                                  ),
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              SizedBox(width: 8),
                              IconButton.filled(
                                iconSize: 36,
                                onPressed: () {
                                  if (index != questionAnswers.length - 1) {
                                    context.read<NextQuestionBloc>().add(
                                      NextQuestion(),
                                    );
                                  }
                                },
                                icon: Icon(Icons.arrow_forward_rounded),
                                style: IconButton.styleFrom(
                                  backgroundColor:
                                      Theme.of(context).colorScheme.primary,
                                ),
                              ),
                              SizedBox(width: 5),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Ink(
        padding: EdgeInsets.only(bottom: 35),
        decoration: BoxDecoration(color: Color.fromRGBO(15, 17, 21, 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavigationButton(icon: MyIcon.card),
            BottomNavigationButton(icon: MyIcon.fire, notification: ''),
            BottomNavigationButton(icon: MyIcon.message, notification: '10'),
            BottomNavigationButton(icon: MyIcon.user, size: 30),
          ],
        ),
      ),
    );
  }
}
