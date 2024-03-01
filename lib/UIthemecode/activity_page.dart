import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tmmappnew/UIthemecode/task_detail.dart';
import 'package:tmmappnew/main.dart';


void main() {
  runApp(ActivityPage());
}

class ActivityPage extends StatefulWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  String _selectedWeek = 'Last Week';
  List<String> _weeks = ['Last Week', '10 Days ago', '15 Days ago','1 month ago'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15,top: 8,bottom: 8,right: 8),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey.withOpacity(0.3),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 13,right: 8,top: 8,bottom: 8),
                          child: Icon(Icons.arrow_back_ios,color: Colors.black,),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Activity",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                        )
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,right: 20,bottom: 8,left: 8),
                    child: DropdownButton<String>(
                      value: _selectedWeek,
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          setState(() {
                            _selectedWeek = newValue;
                          });
                        }
                      },
                      underline: Container(),
                      items: _weeks.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(
                    children: [
                      Positioned(
                          top: 50,
                          left: 60,
                          child: Text("60",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                      ),
                      Positioned(
                          top: 80,
                          left: 45,
                          child: Text("Total Tasks",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey
                            ),
                          )
                      ),
                      CircularBarChart(
                        data: [25, 35, 40],
                        colors: [Colors.blue, Colors.green.shade300, Colors.purple.shade400],
                        strokeWidth: 20,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(Icons.circle_rounded,color: Colors.blue,size: 12,),
                          ),
                          Text("12 Upcoming",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(Icons.circle_rounded,color: Colors.purple.shade300,size: 12,),
                          ),
                          Text("28 In Progress",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(Icons.circle_rounded,color: Colors.green.shade300,size: 12,),
                          ),
                          Text("20 Completed",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 8,bottom: 8,right: 8),
                    child: Text("Your Schedule",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,top: 8,bottom: 8,right: 15),
                    child: Text("Edit",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 8,),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8,bottom: 8),
                        child: Container(
                          height: 90,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              border: Border.all(width: 1,color: Colors.grey.shade400)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("10",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("Mon",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,bottom: 8),
                        child: Container(
                          height: 90,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              border: Border.all(width: 1,color: Colors.grey.shade400)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("11",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("Tue",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,bottom: 8),
                        child: Container(
                          height: 90,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.blue,
                              border: Border.all(width: 1,color: Colors.grey.shade400)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("12",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                              Text("Wed",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,bottom: 8),
                        child: Container(
                          height: 90,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              border: Border.all(width: 1,color: Colors.grey.shade400)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("13",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("Thu",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,bottom: 8),
                        child: Container(
                          height: 90,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              border: Border.all(width: 1,color: Colors.grey.shade400)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("14",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("Fri",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,bottom: 8),
                        child: Container(
                          height: 90,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              border: Border.all(width: 1,color: Colors.grey.shade400)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("15",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Text("Sat",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 220,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 18,right: 8,bottom: 8),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green,
                                border: Border.all(color: Colors.white,width: 2.5)
                            ),
                            child: Text("Design",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 14,
                            color: Colors.white,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green.withOpacity(0.3),
                                border: Border.all(color: Colors.white,width: 2.5)
                            ),
                            child: Text("Research",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(left: 8,top: 8,bottom: 8,right: 8),
                            child: Icon(Icons.more_vert,color: Colors.black,size: 25,),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,bottom: 8,left: 20),
                      child: Text("UX Research and Design",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8,left: 20),
                      child: Text("Prototype design is a powerful process\ndetailing how designers do everything required...",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Roboto',
                          color: Colors.grey.shade700,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 8),
                          child: Container(
                            height: 40,
                            width: 115,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 8,
                                  left: 20,
                                  child: CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Colors.grey.shade300,
                                   child: ClipOval(
                                      child: Image.asset(
                                        'lib/assets/boy1-removebg-preview.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit
                                            .cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 8,
                                  left: 35,
                                  child: CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Colors.grey.shade300,
                                    child: ClipOval(
                                      child: Image.asset(
                                        'lib/assets/boy2-removebg-preview.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit
                                            .cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 8,
                                  left: 50,
                                  child: CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Colors.grey.shade300,
                                    child: ClipOval(
                                      child: Image.asset(
                                        'lib/assets/boy3-removebg-preview.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit
                                            .cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 8,
                                  left: 65,
                                  child: CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Colors.blue,
                                    child: ClipOval(
                                        child: Icon(Icons.add,color: Colors.white,)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(Icons.comment,color: Colors.green.withOpacity(0.8)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4,top: 4,bottom: 4,right: 15),
                          child: Text("4",style:TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Transform.rotate(
                            angle: -90 * (pi / 180),
                            child: Icon(Icons.attachment_outlined, color: Colors.black45),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4,top: 4,bottom: 4,right: 15),
                          child: Text("12",style:TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 220,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.purple.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 18,right: 8,bottom: 8),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.purple,
                                border: Border.all(color: Colors.white,width: 2.5)
                            ),
                            child: Text("Design",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 12,
                            color: Colors.white,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.purple.shade100,
                                border: Border.all(color: Colors.white,width: 2.5)
                            ),
                            child: Text("Product",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(left: 8,top: 8,bottom: 8,right: 8),
                            child: Icon(Icons.more_vert,color: Colors.black,size: 25,),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8,bottom: 8,left: 20),
                      child: Text("Product Design",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8,left: 20),
                      child: Text("It is a long established fact that a reader will\nbe distracted by the readable.",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'Roboto',
                            color: Colors.grey.shade700,
                            letterSpacing: 1
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 8),
                          child: Container(
                            height: 40,
                            width: 95,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 8,
                                  left: 20,
                                  child: CircleAvatar(
                                    radius: 13,
                                   backgroundColor: Colors.grey.shade300,
                                    child: ClipOval(
                                      child: Image.asset(
                                        'lib/assets/boy1-removebg-preview.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit
                                            .cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 8,
                                  left: 35,
                                  child: CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Colors.grey.shade300,
                                    child: ClipOval(
                                      child: Image.asset(
                                        'lib/assets/boy2-removebg-preview.png',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit
                                            .cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 8,
                                  left: 50,
                                  child: CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Colors.blue,
                                    child: ClipOval(
                                        child: Icon(Icons.add,color: Colors.white,)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(Icons.comment,color: Colors.purple.withOpacity(0.8)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4,top: 4,bottom: 4,right: 15),
                          child: Text("4",style:TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Transform.rotate(
                            angle: -90 * (pi / 180),
                            child: Icon(Icons.attachment_outlined, color: Colors.black45),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4,top: 4,bottom: 4,right: 15),
                          child: Text("12",style:TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}


class CircularBarChart extends StatelessWidget {
  final List<double> data;
  final List<Color> colors;
  final double strokeWidth;

  CircularBarChart({
    required this.data,
    required this.colors,
    this.strokeWidth = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(150, 150),
      painter: CircularBarChartPainter(data, colors, strokeWidth),
    );
  }
}

class CircularBarChartPainter extends CustomPainter {
  final List<double> data;
  final List<Color> colors;
  final double strokeWidth;

  CircularBarChartPainter(this.data, this.colors, this.strokeWidth);

  @override
  void paint(Canvas canvas, Size size) {
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final radius = min(centerX, centerY) - strokeWidth / 2;

    final double total = data.reduce((a, b) => a + b);

    double startRadian = -pi / 2;

    for (int i = 0; i < data.length; i++) {
      final paint = Paint()
        ..color = colors[i % colors.length]
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth
        ..strokeCap = StrokeCap.round;

      final sweepRadian = (data[i] / total) * 2 * pi;

      canvas.drawArc(
        Rect.fromCircle(center: Offset(centerX, centerY), radius: radius),
        startRadian,
        sweepRadian,
        false,
        paint,
      );

      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}