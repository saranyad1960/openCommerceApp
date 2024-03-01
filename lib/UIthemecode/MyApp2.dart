
import 'package:flutter/material.dart';
import 'package:tmmappnew/UIthemecode/task_detail.dart';
import 'dart:io';

import 'bloc/accountBloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp2());
}

class MyApp2 extends StatefulWidget {
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyApp2State();
}
class _MyApp2State extends State<MyApp2> {
  ThemeMode themeMode = ThemeMode.system;
  String currentLocaleId = Platform.isAndroid ? 'en_US' : 'en-US';


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AccountBloc(),
          ),
          // BlocProvider(
          //   create: (context) => AssistantBloc(),
          // ),
          // BlocProvider(
          //   create: (context) => RoutineBloc(),
          // ),
          // BlocProvider(
          //   create: (context) => TaskmanagerBloc(),
          // ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeMode,
          theme: ThemeData(
            primaryColor: Colors.indigoAccent,
            primarySwatch: Colors.red,
            scaffoldBackgroundColor: Colors.white,
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // background
                foregroundColor: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100)), // foreground
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
              ),
            ),
            floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.white,
            ),
            cardTheme: const CardTheme(
              color: Colors.white,
            ),
            tabBarTheme: const TabBarTheme(
              indicator: BoxDecoration(
                color: Colors.black12,
              ),
              labelColor: Colors.black,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.black54,
            ),
            iconTheme: const IconThemeData(color: Colors.black, size: 20),
            textTheme: TextTheme(
              titleMedium: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                overflow: TextOverflow.ellipsis,
                shadows: [
                  Shadow(
                    offset: const Offset(.2, 1.0),
                    blurRadius: 2.0,
                    color: Colors.black.withOpacity(0.25),
                  ),
                ],
                fontSize: 20,
              ),
              displayLarge: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                overflow: TextOverflow.ellipsis,
                shadows: [
                  Shadow(
                    offset: const Offset(.25, 3.0),
                    blurRadius: 4.0,
                    color: Colors.black.withOpacity(0.25),
                  ),
                ],
                fontSize: 25,
              ),
              displayMedium: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  shadows: [
                    Shadow(
                      offset: const Offset(.25, 2.0),
                      blurRadius: 4.0,
                      color: Colors.black.withOpacity(0.25),
                    ),
                  ],
                  fontSize: 17),
              displaySmall: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  shadows: [
                    Shadow(
                      offset: const Offset(.25, 2.0),
                      blurRadius: 4.0,
                      color: Colors.black.withOpacity(0.25),
                    ),
                  ],
                  fontSize: 14),
              titleSmall: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  shadows: [
                    Shadow(
                      offset: const Offset(.2, 0.2),
                      blurRadius: 2.0,
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ],
                  fontSize: 17),
              headlineSmall: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w900,
                  shadows: [
                    Shadow(
                      offset: const Offset(.2, 1.0),
                      blurRadius: 2.0,
                      color: Colors.black.withOpacity(0.25),
                    ),
                  ],
                  fontSize: 16),
              bodyMedium:  TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      offset: const Offset(.1, 0.5),
                      blurRadius: 1.0,
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ],
                  fontSize: 17),
              headlineMedium: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'times new roman',
                  shadows: [
                    Shadow(
                      offset: const Offset(.2, 1.0),
                      blurRadius: 2.0,
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ],
                  fontSize: 17.5),
              labelMedium: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  shadows: [
                    Shadow(
                      offset: const Offset(.1, 1.0),
                      blurRadius: 1.0,
                      color: Colors.black.withOpacity(0.25),
                    ),
                  ],
                  fontSize: 16),
              labelSmall: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  shadows: [
                    Shadow(
                      offset: const Offset(.1, 1.0),
                      blurRadius: 1.0,
                      color: Colors.black.withOpacity(0.25),
                    ),
                  ],
                  fontSize: 12),
            ),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: Colors.white,
              selectedIconTheme: IconThemeData(color: Colors.black),
              unselectedIconTheme: IconThemeData(color: Colors.black54),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
              selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedItemColor: Colors.black45,
              selectedItemColor: Colors.black,
              type: BottomNavigationBarType.fixed,
            ),
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              elevation: 0,
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 19,
                shadows: [
                  Shadow(
                    offset: const Offset(.3, 2.0),
                    blurRadius: 5.0,
                    color: Colors.black.withOpacity(0.25),
                  ),
                ],
              ),
              iconTheme: const IconThemeData(color: Colors.black, size: 25),
            ),
          ),
          home: TaskDetail(),
          routes: {

          },
        ));
  }
}


// sample card code
// Card(
// child: Container(
// width: double.infinity,
// // height: 50,
// padding: const EdgeInsets.only(
// top: 10, bottom: 10, left: 12, right: 6
// ),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Text(
// 'TASK ID: AE23DC23',
// style: Theme.of(context).textTheme.displayMedium,
// ),
// // 0  - 25  amber
// // 26 - 50  cyan
// // 51 - 75  blue
// // 76 - 100 green
//
// InkWell(
// onTap: () {
// },
// child: CircularPercentIndicator(
// radius: 22.0,
// lineWidth: 7.0,
// animation: true,
// percent: 0.64,
// center: new Text(
// "64",
// style: Theme.of(context).textTheme.displaySmall
// ),
// // footer: new Text(
// //   "PROGRESS",
// //   style: Theme.of(context).textTheme.displaySmall
// // ),
// circularStrokeCap: CircularStrokeCap.round,
// progressColor: Colors.blue,
// ),
// ),
//
//
//
// ],
// ),
// SizedBox(height: 10,),
// Text(
// 'time (everyday/specific day) - task'.toUpperCase(),
// style: Theme.of(context).textTheme.displayMedium,
// ),
// SizedBox(height: 15,),
// Text(
// 'SUMMARY:',
// style: Theme.of(context).textTheme.displayMedium,
// ),
// // SizedBox(height: 10,),
// Text(
// 'time (everyday/specific day) - task'.toUpperCase(),
// style: Theme.of(context).textTheme.displayMedium,
// ),
// SizedBox(height: 100,),
//
//
// Row(
// children: [
//
//
//
// ],
// )
// ],
// ),
// ),
// ),

