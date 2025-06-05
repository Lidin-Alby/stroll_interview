import 'package:flutter/material.dart';
import 'package:stroll_interview/models/my_icon.dart';
import 'package:stroll_interview/widgets/bottom_navigation_button.dart';
import 'package:stroll_interview/widgets/multiple_choice_button.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
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
                        Color.fromRGBO(0, 0, 0, 0.5),
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
                              color: Color.fromRGBO(179, 173, 246, 1),
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
                          Container(
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
                          Icon(Icons.timer_outlined, size: 14),
                          SizedBox(width: 2),

                          Text('22h 00m', style: TextStyle(fontSize: 12)),
                          SizedBox(width: 10),
                          Icon(Icons.person_outline, size: 14),
                          SizedBox(width: 2),
                          Text('103', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(top: 40),

                decoration: BoxDecoration(
                  color: Colors.black,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(0, 0, 0, 0.0),
                      Color.fromRGBO(0, 0, 0, 0.7),
                      Color.fromRGBO(0, 0, 0, 0.8),

                      Color.fromRGBO(0, 0, 0, 0.9),
                      Color.fromRGBO(0, 0, 0, 0.9),

                      Color.fromRGBO(0, 0, 0, 0.9),
                      Color.fromRGBO(0, 0, 0, 0.9),
                      Color.fromRGBO(0, 0, 0, 0.9),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 5),
                                  Text(
                                    'Angelina, 28',
                                    style: TextStyle(
                                      color: Color.fromRGBO(245, 245, 245, 1),
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Text(
                                      'What is your favourite time of day?',
                                      style: TextStyle(
                                        color: Color.fromRGBO(245, 245, 245, 1),
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
                          '"Mine is definitely the peace in the morning."',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 12,
                            color: Color.fromRGBO(203, 201, 255, 0.7),
                          ),
                        ),
                      ),
                      Row(
                        spacing: 12,
                        children: [
                          Expanded(
                            child: MultipleChoiceButton(
                              optionLabel: 'A',
                              optionText: 'The peace in the early mornings',
                              value: 'A',
                            ),
                          ),
                          Expanded(
                            child: MultipleChoiceButton(
                              optionLabel: 'B',
                              optionText: 'The magical golden hours',
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
                              optionText: 'Wind-down time after dinners',
                              value: 'C',
                            ),
                          ),
                          Expanded(
                            child: MultipleChoiceButton(
                              optionLabel: 'D',
                              optionText: 'The serinity past midnight',
                              value: 'D',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
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
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              iconSize: 33,
                              onPressed: () {},
                              icon: Icon(Icons.mic),
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          SizedBox(width: 8),
                          IconButton.filled(
                            iconSize: 36,
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_rounded),
                            style: IconButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ],
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
