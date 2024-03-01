import 'package:flutter/material.dart';
import 'package:tmmappnew/tmmapp/Myhomepage.dart';

class Npay2 extends StatefulWidget {
  @override
  _Npay2State createState() => _Npay2State();
}

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Npay2(),
  ));
}


class _Npay2State extends State<Npay2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: ClipOval(
                        child: const Image(
                          image: NetworkImage(
                            'https://img.freepik.com/premium-photo/unshaven-young-man-red-shirt-yellow-background-fashion_474717-19633.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Alexar",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5
                        ),
                      ),
                      Text("Usuf",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Balance",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5
                          ),
                        ),
                        Text("\$ 24562.00",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.indigoAccent.shade700
                        ),
                        child: Icon(Icons.add,color: Colors.white,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15,left: 8,right: 8),
                        child: Text("Tap for Send Money",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15,left: 15,bottom: 5),
                        child: Text("Recent Transfer",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                        ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Container(
                                 height: 50,
                                 width: 50,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(50),
                                 ),
                                 child: ClipOval(
                                   child: const Image(
                                     image: NetworkImage(
                                       'https://media.istockphoto.com/id/1369508766/photo/beautiful-successful-latin-woman-smiling.jpg?s=612x612&w=0&k=20&c=LoznG6eGT42_rs9G1dOLumOTlAveLpuOi_U755l_fqI=',
                                     ),
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Container(
                                 height: 50,
                                 width: 50,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(50),
                                 ),
                                 child: ClipOval(
                                   child: const Image(
                                     image: NetworkImage(
                                       'https://t4.ftcdn.net/jpg/02/24/86/95/360_F_224869519_aRaeLneqALfPNBzg0xxMZXghtvBXkfIA.jpg',
                                     ),
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Container(
                                 height: 50,
                                 width: 50,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(50),
                                 ),
                                 child: ClipOval(
                                   child: const Image(
                                     image: NetworkImage(
                                       'https://as1.ftcdn.net/v2/jpg/01/87/83/28/1000_F_187832859_zAGqvNwfTi3iAHdKYAx4RrTd3mO64nht.jpg',
                                     ),
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Container(
                                 height: 50,
                                 width: 50,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(50),
                                 ),
                                 child: ClipOval(
                                   child: const Image(
                                     image: NetworkImage(
                                       'https://t4.ftcdn.net/jpg/03/26/98/51/360_F_326985142_1aaKcEjMQW6ULp6oI9MYuv8lN9f8sFmj.jpg',
                                     ),
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Container(
                                 height: 50,
                                 width: 50,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(50),
                                 ),
                                 child: ClipOval(
                                   child: const Image(
                                     image: NetworkImage(
                                       'https://media.istockphoto.com/id/1310209956/photo/shot-of-a-mid-adult-woman-standing-near-window-balcony-stock-photo.jpg?s=612x612&w=0&k=20&c=XYfe8AHKwNNjZiFZF5eo5isqctqnOlX8h5ZsRIC1FP0=',
                                     ),
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Container(
                                 height: 50,
                                 width: 50,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(50),
                                 ),
                                 child: ClipOval(
                                   child: const Image(
                                     image: NetworkImage(
                                       'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Outdoors-man-portrait_%28cropped%29.jpg/640px-Outdoors-man-portrait_%28cropped%29.jpg',
                                     ),
                                     fit: BoxFit.cover,
                                   ),
                                 ),
                               ),
                             ),
                           ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 8),
                child: Row(
                  children: [
                    Text("Recent Transactions",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyApp1(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("See all",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                          ),),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios,
                      size: 11,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ClipOval(
                            child: const Image(
                              image: NetworkImage(
                                'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?size=626&ext=jpg&ga=GA1.1.98259409.1709078400&semt=ais',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Alex Macculam",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 3,),
                          Text("Send Money",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue
                            ),),
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("-\$66.02",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue
                            ),),
                          SizedBox(height: 3,),
                          Text("25-12-2022 6:00pm",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey
                            ),),
                        ],
                      ),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ClipOval(
                            child: const Image(
                              image: NetworkImage(
                                'https://img.freepik.com/premium-photo/unshaven-young-man-red-shirt-yellow-background-fashion_474717-19633.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mac Dinner",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 3,),
                          Text("Cashout",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.red
                            ),),
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("-\$120.02",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.red
                            ),),
                          SizedBox(height: 3,),
                          Text("25-12-2022 6:00pm",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey
                            ),),
                        ],
                      ),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ClipOval(
                            child: const Image(
                              image: NetworkImage(
                                'https://t4.ftcdn.net/jpg/02/45/56/35/360_F_245563558_XH9Pe5LJI2kr7VQuzQKAjAbz9PAyejG1.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Brandon King",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 3,),
                          Text("Received Money",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.greenAccent.shade700
                            ),),
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("+\$250.00",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.greenAccent.shade700,
                            ),),
                          SizedBox(height: 3,),
                          Text("01-01-2023 8:00pm",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey
                            ),),
                        ],
                      ),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ClipOval(
                            child: const Image(
                              image: NetworkImage(
                                'https://img.freepik.com/premium-photo/unshaven-young-man-red-shirt-yellow-background-fashion_474717-19633.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mac Dinner",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 3,),
                          Text("Cashout",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.red
                            ),),
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("-\$120.02",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.red
                            ),),
                          SizedBox(height: 3,),
                          Text("25-12-2022 6:00pm",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey
                            ),),
                        ],
                      ),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ClipOval(
                            child: const Image(
                              image: NetworkImage(
                                'https://www.shutterstock.com/shutterstock/photos/1554086789/display_1500/stock-photo-close-up-portrait-of-yong-woman-casual-portrait-in-positive-view-big-smile-beautiful-model-posing-1554086789.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Julia Meri",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 3,),
                          Text("Cashout",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.red
                            ),),
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("-\$20",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),),
                          SizedBox(height: 3,),
                          Text("25-12-2022 6:00pm",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey
                            ),),
                        ],
                      ),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}