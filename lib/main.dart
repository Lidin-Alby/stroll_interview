import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stroll_interview/bloc/question_answer/question_answer_bloc.dart';
import 'package:stroll_interview/screens/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => QuestionAnswerBloc())],
      child: MaterialApp(
        // title: 'Flutter Demo',
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData(
          fontFamily: 'Proxima Nova',
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black,
          colorScheme: ColorScheme.dark(
            primary: Color.fromRGBO(139, 136, 239, 1),
          ),
        ),
        theme: ThemeData(
          fontFamily: 'Proxima Nova',

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: Screen1(),
      ),
    );
  }
}
