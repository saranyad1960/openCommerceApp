import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'activity_page.dart';





class TaskDetail extends StatefulWidget {
  const TaskDetail({Key? key}) : super(key: key);

  @override
  _TaskDetailState createState() => _TaskDetailState();
}

class _TaskDetailState extends State<TaskDetail> {
  String _selectedWeek = 'Last Week';
  List<String> _weeks = ['Last Week', '10 Days ago', '15 Days ago','1 month ago'];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedIndex == 0 ?
      SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8,right: 8,bottom: 8,left: 20),
                    child: Text("Hi, Naeem!",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1
                      ),
                    ),
                  ),
                  Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Icon(Icons.waving_hand_sharp, color: Colors.orange),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,right: 20,bottom: 8,left: 8),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.grey.shade300,
                      child: ClipOval(
                        child: Image.asset(
                          'lib/assets/man1-removebg-preview.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit
                              .cover,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 50, bottom: 10),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Container(
                      height: 40,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Upcoming",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => ActivityPage()),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.shade200
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("In Progress",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 40,
                      width: 120,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade200
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text("Completed",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8,right: 8,bottom: 8,left: 20),
                    child: Text("Upcoming",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
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
              SizedBox(height: 20,),
              Container(
                height: 220,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.3),
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
                                color: Colors.blue,
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
                                color: Colors.blue.withOpacity(0.3),
                                border: Border.all(color: Colors.white,width: 2.5)
                            ),
                            child: Text("Prototype",
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
                      child: Text("UI Design and Prototype",
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
                          child: Icon(Icons.comment,color: Colors.blue.withOpacity(0.8)),
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
              SizedBox(height: 20,),
            ],
          ),
        ),
      ) :
      Container(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: PlusButtonInContainer(),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account_rounded),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}

class PlusButtonInContainer extends StatelessWidget {

  const PlusButtonInContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(50),
        color: Colors.blueAccent,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Icon(Icons.add, color: Colors.white),
    );
  }
}