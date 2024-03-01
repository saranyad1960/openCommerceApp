import 'package:flutter/material.dart';
import 'package:tmmappnew/npay1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8,bottom: 8,left: 20,right: 8),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        child: Icon(Icons.arrow_back,),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Npay1(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8,bottom: 8,left: 8,right: 20),
                        child: Container(
                          height: 40,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.indigoAccent.shade700,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add,color: Colors.white,size: 20,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Add Task",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8,left: 20,right: 20),
                      child: Text("Mon",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,right: 20,left: 8),
                      child: Text("Tue",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,right: 20,left: 8),
                      child: Text("Wed",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,right: 20,left: 8),
                      child: Text("Thu",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.indigoAccent.shade700
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,right: 20,left: 8),
                      child: Text("Fri",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,right: 20,left: 8),
                      child: Text("Sat",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,right: 20,left: 8),
                      child: Text("Sun",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8,left: 26,right: 20),
                    child: Text("11",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,right: 20,left: 20),
                    child: Text("12",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,right: 20,left: 18),
                    child: Text("13",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,right: 20,left: 20),
                    child: Text("14",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.indigoAccent.shade700
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,right: 20,left: 12),
                    child: Text("15",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,right: 20,left: 12),
                    child: Text("16",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,left: 12),
                    child: Text("17",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey
                      ),
                    ),
                  ),
                ],
              ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 8),
                  child: Icon(Icons.circle_rounded,size: 6,color: Colors.indigoAccent.shade700,),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 10,),
                        _buildStepCircle(filled: true,h: true),
                        _buildStepLine(),
                        _buildStepCircle(),
                        _buildStepLine(),
                        _buildStepCircle(),
                        _buildStepLine(),
                        _buildStepCircle(),
                        _buildStepLine(),
                        _buildStepCircle(),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15,left: 10),
                          child: Container(
                            height: 100,
                            width: 320,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.redAccent.shade200,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 3),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Wireframing",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text("12:00 PM",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Text("Make some ideations from sketch\nand wireframes.",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15,left: 10),
                          child: Container(
                            height: 100,
                            width: 320,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.purple.withOpacity(0.1),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 3),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("UI Design",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text("1:30 PM",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20,top: 5),
                                  child: Row(
                                    children: [
                                      Text("Visual design from the wireframe\nand make design systems.",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15,left: 10),
                          child: Container(
                            height: 100,
                            width: 320,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orange.shade50,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 3),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Prototyping",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text("3:00 PM",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20,top: 5),
                                  child: Row(
                                    children: [
                                      Text("Make the interactive prototype for\nthe testing & stakeholders.",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15,left: 10),
                          child: Container(
                            height: 100,
                            width: 320,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.green.withOpacity(0.1),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 3),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Usability Testing",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text("3:45 PM",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20,top: 5),
                                  child: Row(
                                    children: [
                                      Text("Primary user testing and usability\ntesting of the prototype.",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15,left: 10),
                          child: Container(
                            height: 100,
                            width: 320,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.pink.withOpacity(0.1),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 3),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Meeting",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text("4:30 PM",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20,top: 5),
                                  child: Row(
                                    children: [
                                      Text("Sum up discussion for the new\nproduct with stackholders.",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}


Widget _buildStepCircle({bool filled = false, bool  h = false}) {
  return Padding(
    padding: const EdgeInsets.all(4),
    child: Container(
      width: h ? 30 : 10,
      height: h ? 20 : 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
        border: Border.all(
          color: Colors.red,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          width: h ? 22 : 2,
          height: h ? 12 : 2,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: filled ? Colors.red : Colors.transparent,
          ),
        ),
      ),
    ),
  );
}

Widget _buildStepLine() {
  return Container(
    width: 2.0,
    height: 100.0,
    color: Colors.red,
  );
}


