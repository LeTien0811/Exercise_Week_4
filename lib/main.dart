import 'package:baitap4_leviettien_2224801030398/screen/1_ListView.dart';
import 'package:baitap4_leviettien_2224801030398/screen/2_GribViewExercise.dart';
import 'package:baitap4_leviettien_2224801030398/screen/3_shared_preferences_excercise.dart';
import 'package:baitap4_leviettien_2224801030398/screen/4_Asynchronous_Programming_Exercise.dart';
import 'package:baitap4_leviettien_2224801030398/screen/4_loadingScreen.dart';
import 'package:baitap4_leviettien_2224801030398/screen/5_Isolate_Exercises%20_Challenge1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Exercise Menu')),

        body: SingleChildScrollView(
          child: Builder(
            builder: (innerContext) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          innerContext,
                          MaterialPageRoute(
                            builder: (context) => ListviewExercise(),
                          ),
                        );
                      },
                      child: Text('1. List View Exercise'),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          innerContext,
                          MaterialPageRoute(
                            builder: (context) => Gribviewexercise(),
                          ),
                        );
                      },
                      child: Text('2. Grid View Exercise'),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          innerContext,
                          MaterialPageRoute(
                            builder: (context) => SharedPreferencesExcercise(),
                          ),
                        );
                      },
                      child: Text('3. Shared Preferences Exercise'),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          innerContext,
                          MaterialPageRoute(
                            builder: (context) => AsynchronousProgrammingExercise(),
                          ),
                        );
                      },
                      child: Text('4. Asynchronous Programming Exercise'),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          innerContext,
                          MaterialPageRoute(
                            builder: (context) => IsolateExercisesChallenge(),
                          ),
                        );
                      },
                      child: Text('5. Isolate Exercises Challenge 1'),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
