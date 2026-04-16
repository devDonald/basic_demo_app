import 'package:flutter/material.dart';

class Admin extends StatelessWidget {
  const Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          appBar: AppBar(
            //Using the AppBar widget to set title and Icons on the app.
            backgroundColor: Colors.white,
            title: Text(
              "9:41",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            actions: [
              Icon(Icons.signal_cellular_alt, size: 18),
              Icon(Icons.wifi, size: 18),
              Icon(Icons.battery_std_sharp, size: 18),
            ],
          ),

          body: SingleChildScrollView(
            //I use SingleChildScrollView so i can make the code in body Scrollable.
            child: Column(
              children: [
                Container(
                  //I use the Container widget so i can give the background color around the Row Containing the Text"Admin settings" and the icons.
                  color: Colors.white,
                  child: Row(
                    //i use this row to be able to give space between the widget in it.
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_circle_left_outlined,
                            size: 50,
                            color: Colors.teal,
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Admin Settings",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(width: 120,),
                      Icon(Icons.more_vert),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Container(
                    //Using the Container to give Background Color to the widgets in it.
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 150,
                          height: 38,
                          decoration:
                          //Using the decoration widget to give the Container Color and Border radius.
                          BoxDecoration(
                            color: Colors.teal[500],
                            borderRadius: BorderRadius.circular(16),
                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Org Config.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        Text("Requirements", style: TextStyle(fontSize: 12)),
                        Text("Intergrations", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      decoration:
                      //Using the decoration widget to give the Container Color and Border radius
                      BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow:
                        //Using the Box shadow widget to give the Container blur radius
                        [
                          BoxShadow(blurRadius: 1, color: Colors.grey),
                        ],
                      ),
                      width: 363,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //Using the mainAxisAlignment to give space between the widgets in it.
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                //Giving the Row a padding of all sides.
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      //Giving the Row a padding of all sides.
                                      child: Icon(
                                        Icons.monitor_heart_outlined,
                                        color: Colors.teal,
                                      ),
                                    ),
                                    Text(
                                      "Service Types & Rates",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      //Giving the Text a padding of all sides.
                                      child: Text(
                                        "+ Add New",
                                        style: TextStyle(
                                          color: Colors.teal,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration:
                              //Using the decoration widget to give the Container Color and Border radius
                              BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow:
                                //Using the Box shadow widget to give the Container blur radius
                                [
                                  BoxShadow(blurRadius: 1, color: Colors.grey),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        //Using the mainAxisAlignment to give space between the widgets in it.
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              //Using the crossAxisAlignment to make the widgets in it start from the left.
                                              children: [
                                                Text(
                                                  "Registered Nurse (RN)",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  "Standard Clinical care",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w100,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            //Giving the Container a padding of all sides.
                                            child: Container(
                                              decoration:
                                              //Using the decoration widget to give the Container Color and Border radius
                                              BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                BorderRadius.circular(8),
                                                boxShadow:
                                                //Using the Box shadow widget to give the Container blur radius and color.
                                                [
                                                  BoxShadow(
                                                    blurRadius: 0.5,
                                                    color: Colors.teal,
                                                  ),
                                                ],
                                              ),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.all(8.0),
                                                    //Giving the Text a padding of all sides.
                                                    child: Text(
                                                      "Active",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                        color:
                                                        Colors.green[700],
                                                        fontSize: 13,

                                                        fontWeight:
                                                        FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        //Giving the Row a padding of all sides.
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          //Using the mainAxisAlignment to give space between the widgets in it.
                                          children: [
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              //Using the mainAxisAlignment to give space between the widgets in it.
                                              children: [
                                                Container(
                                                  decoration:
                                                  //Using the decoration widget to give the Container Color.
                                                  BoxDecoration(
                                                    color: Colors.grey[100],
                                                  ),
                                                  width: 165,
                                                  //Giving the Container width.
                                                  child: Column(
                                                    //Using thw Column to stack the Text on eachother.
                                                    children: [
                                                      Text(
                                                        'Base Rate',
                                                        style: TextStyle(
                                                          color:
                                                          Colors.grey[700],
                                                          fontSize: 9,
                                                        ),
                                                      ),
                                                      Text(
                                                        "\$45.00/hr",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18,
                                                          fontWeight:
                                                          FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  decoration:
                                                  //Using the decoration widget to give the Container Color.
                                                  BoxDecoration(
                                                    color: Colors.grey[100],
                                                  ),
                                                  width: 165,
                                                  child: Column(
                                                    //Using the Column to stack the Text on eachother.
                                                    children: [
                                                      Text(
                                                        'Overtime Rate',
                                                        style: TextStyle(
                                                          color:
                                                          Colors.grey[700],
                                                          fontSize: 9,
                                                        ),
                                                      ),
                                                      Text(
                                                        "\$67.50/hr",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18,
                                                          fontWeight:
                                                          FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            //Giving the Container a padding of all sides.
                            child: Container(
                              decoration:
                              //Using the decoration widget to give the Container Color and Border radius.
                              BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow:
                                //Using the Box shadow widget to give the Container blur radius and color.
                                [
                                  BoxShadow(blurRadius: 1, color: Colors.grey),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        //Using the mainAxisAlignment to give space between the widgets in it.
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            //Giving the Column a padding of all sides.
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              //Using the crossAxisAlignment to make the widgets in it start from the left.
                                              children: [
                                                Text(
                                                  "Home Health Aide(HHA)",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  "Personal Care Services",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w100,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            //Giving the Column a padding of all sides.
                                            child: Container(
                                              decoration:
                                              //Using the decoration widget to give the Container Color and Border radius
                                              BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(8),
                                                boxShadow:
                                                //Using the Box shadow widget to give the Container blur radius and color.
                                                [
                                                  BoxShadow(
                                                    blurRadius: 0.5,
                                                    color: Colors.teal,
                                                  ),
                                                ],
                                              ),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.all(8.0),
                                                    //Giving the Text a padding of all sides.
                                                    child: Text(
                                                      "Active",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                        color:
                                                        Colors.green[700],
                                                        fontSize: 12,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        //Giving the Row a padding of all sides.
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          //Using the mainAxisAlignment to give space between the widgets in it.
                                          children: [
                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey[100],
                                                  ),
                                                  width: 165,
                                                  child: Column(
                                                    //Using the Column to stack the Text on eachother.
                                                    children: [
                                                      Text(
                                                        'Base Rate',
                                                        style: TextStyle(
                                                          color:
                                                          Colors.grey[700],
                                                          fontSize: 11,
                                                        ),
                                                      ),

                                                      Text(
                                                        "\$22.00/hr",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18,
                                                          fontWeight:
                                                          FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey[100],
                                                  ),
                                                  width: 164,
                                                  //Giving the Container width.
                                                  child: Column(
                                                    //Using the Column to stack the Text on eachother.
                                                    children: [
                                                      Text(
                                                        'Overtime Rate',
                                                        style: TextStyle(
                                                          color:
                                                          Colors.grey[700],
                                                          fontSize: 11,
                                                        ),
                                                      ),
                                                      Text(
                                                        "\$33.50/hr",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 18,
                                                          fontWeight:
                                                          FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
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
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  //Giving the Column a padding of all sides.
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration:
                            //Using the decoration widget to give the Container Color and Border radius
                            BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow:
                              //Using the Box shadow widget to give the Container blur radius and color.
                              [
                                BoxShadow(blurRadius: 1, color: Colors.grey),
                              ],
                            ),
                            width: 350,
                            //Giving the Container width.
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      //Giving the Icon a padding of all sides.
                                      child: Icon(
                                        Icons.access_time,
                                        color: Colors.teal,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      //Giving the Text a padding of all sides.
                                      child: Text(
                                        "API Integrations",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration:
                                    //Using the decoration widget to give the Container Color and Border radius.
                                    BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow:
                                      //Using the Box shadow widget to give the Container blur radius and color.
                                      [
                                        BoxShadow(
                                          blurRadius: 1,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              //Using the mainAxisAlignment to give space between the widgets in it.
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  //Giving the Column a padding of all sides.
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    //Using the crossAxisAlignment to make the widgets in it start from the left.
                                                    children: [
                                                      Text(
                                                        "Facility Call Light",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          fontWeight:
                                                          FontWeight.bold,
                                                        ),
                                                      ),
                                                      Text(
                                                        "Available for active clients 24/7 hrs",
                                                        textAlign:
                                                        TextAlign.start,
                                                        style: TextStyle(
                                                          fontWeight:
                                                          FontWeight.w100,
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(12.0),
                                                  //Giving the Container a padding of all sides.
                                                  child: Container(
                                                    decoration:
                                                    //Using the decoration widget to give the Container Color and Border radius
                                                    BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.circular(8),
                                                      boxShadow:
                                                      //Using the Box shadow widget to give the Container blur radius and color.
                                                      [
                                                        BoxShadow(
                                                          blurRadius: 0.5,
                                                          color: Colors.teal,
                                                        ),
                                                      ],
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.all(8.0),
                                                          //Giving the Row a padding of all sides.
                                                          child: Text(
                                                            "Active",
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                              color: Colors.green[700],
                                                              fontSize: 11,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,

                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(blurRadius: 1, color: Colors.grey),
                              ],
                            ),
                            width: 350,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //Using the mainAxisAlignment to give space between the widgets in it.
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      //Giving the Row a padding of all sides.
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            //Giving the Icon a padding of all sides.
                                            child: Icon(
                                              Icons.access_time,
                                              color: Colors.teal,
                                            ),
                                          ),
                                          Text(
                                            "Office Rules",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      //Giving the Row a padding of all sides.
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "Edit",
                                              style: TextStyle(
                                                color: Colors.teal,
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

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  //Giving the Container a padding of all sides.
                                  child: Container(
                                    decoration:
                                    //Using the decoration widget to give the Container Color and Border radius
                                    BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow:
                                      //Using the Box shadow widget to give the Container blur radius and color.
                                      [
                                        BoxShadow(
                                          blurRadius: 1,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          //Using the crossAxisAlignment to make the widgets in it start from the left.
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              //Using the mainAxisAlignment to give space between the widgets in it.
                                              children: [
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(top: 12.0, left: 12),
                                                  //Giving the Text a padding only on the top and left sides.
                                                  child: Text(
                                                    "Staff",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(12.0),
                                                  //Giving the Container a padding of all sides.
                                                  child: Container(
                                                    decoration:
                                                    //Using the decoration widget to give the Container Color and Border radius
                                                    BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                      BorderRadius.circular(8),
                                                      boxShadow:
                                                      //Using the Box shadow widget to give the Container blur radius and color.
                                                      [
                                                        BoxShadow(
                                                          blurRadius: 0.5,
                                                          color: Colors.teal,
                                                        ),
                                                      ],
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.all(8.0),
                                                          //Giving the Text a padding of all sides.
                                                          child: Text(
                                                            "Active",
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                              color: Colors.green[700],
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.only(left: 8.0),
                                              //Giving the Text a padding only on the left sides.
                                              child: Text(
                                                "Available for active clients 24/7 hrs",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w100,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 8.0,bottom: 8),
                                              //Giving the Text a padding only on the left side and bottom side.
                                              child: Text(
                                                "Standard Office Hours (15 safe zone)",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w100,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              //Giving the Row a padding of all sides.
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                //Using the mainAxisAlignment to give space between the widgets in it.
                                                children: [
                                                  Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                        BoxDecoration(
                                                          color: Colors.grey[100],
                                                        ),
                                                        width: 157,
                                                        //Giving the Container width.
                                                        child: Column(
                                                          children: [
                                                            Text(
                                                              'clock-in/clock-Out',
                                                              style: TextStyle(
                                                                color: Colors.grey[700],
                                                                fontSize: 9,
                                                              ),
                                                            ),
                                                            Text(
                                                              "9:00AM-5:00PM",
                                                              style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 17,
                                                                fontWeight:
                                                                FontWeight.bold,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Container(
                                                        decoration:
                                                        //Using the decoration widget to give the Container Color.
                                                        BoxDecoration(
                                                          color: Colors.grey[100],
                                                        ),
                                                        width: 157,
                                                        //Giving the Container width.
                                                        child: Column(
                                                          children: [
                                                            Text('Days',
                                                              style: TextStyle(
                                                                color: Colors.grey[700],
                                                                fontSize: 9,
                                                              ),
                                                            ),
                                                            Text("Mon-Friday",
                                                              style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 18,
                                                                fontWeight: FontWeight.bold,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
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
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          //Giving the Container a padding of all sides.
                          child: Container(
                            decoration:
                            //Using the decoration widget to give the Container Color and Border radius
                            BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow:
                              //Using the Box shadow widget to give the Container blur radius and color.
                              [
                                BoxShadow(blurRadius: 1, color: Colors.black),
                              ],
                            ),
                            width: 350,
                            //Giving the Container width.
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //Using the mainAxisAlignment to give space between the widgets in it.
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      //Giving the Row a padding of all sides.
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            //Giving the Icon a padding of all sides.
                                            child: Icon(
                                              Icons.account_balance,
                                              color: Colors.teal,
                                            ),
                                          ),
                                          Text(
                                            "Payroll&Shifts Rules",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      //Giving the Row a padding of all sides.
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              child: Text(
                                                "Edit",
                                                style: TextStyle(
                                                  color: Colors.teal,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,bottom: 8),
                                  //Giving the Row a padding only on the left side and bottom side.
                                  child: Row(
                                    children: [
                                      Text(
                                        "configure overtime,breaks , and shift differentials",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //Using the mainAxisAlignment to give space between the widgets in it.
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      //Giving the Column a padding of all sides.
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Daily Overtime",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),

                                          Text(
                                            "Pay 1.5x faster after 8 hours",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Icon(
                                      Icons.toggle_on,
                                      color: Colors.teal,
                                      size: 50,
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 270,
                                  //Giving the Container width.
                                  child: Divider(
                                    //Using the Divider widget go create a horizontal line also giving it height,thickness and color.
                                    height: 50,
                                    thickness: 1.5,
                                    color: Colors.grey[100],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //Using the mainAxisAlignment to give space between the widgets in it.
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        //Using the crossAxisAlignment to make the widgets in it start from the left.
                                        children: [
                                          Text(
                                            "Weekly Overtime",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),

                                          Text(
                                            "Pay 1.5x faster after 40 hours",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Icon(
                                      Icons.toggle_on,
                                      color: Colors.teal,
                                      size: 50,
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 270,
                                  //Giving the Container width.
                                  child: Divider(
                                    //Using the Divider widget go create a horizontal line also giving it height,thickness and color.
                                    height: 50,
                                    thickness: 1.5,
                                    color: Colors.grey[100],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //Using the mainAxisAlignment to give space between the widgets in it.
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      //Giving the Column a padding of all sides.
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        //Using the crossAxisAlignment to make the widgets in it start from the left.
                                        children: [
                                          Text(
                                            "Payroll Syncing",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),

                                          Text(
                                            "Instantly export completed shifts to integrated",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "payroll systems",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Icon(
                                      Icons.toggle_on,
                                      color: Colors.teal,
                                      size: 50,
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 270,
                                  //Giving the Container width.
                                  child: Divider(
                                    //Using the Divider widget go create a horizontal line also giving it height,thickness and color.

                                    height: 50,
                                    thickness: 1.5,
                                    color: Colors.grey[100],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //Using the mainAxisAlignment to give space between the widgets in it.
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      //Giving the Column a padding of all sides.
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        //Using the crossAxisAlignment to make the widgets in it start from the left.
                                        children: [
                                          Text(
                                            "Mandatory Breaks",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),

                                          Text(
                                            "Requires 30min break after 8hrs+ shift",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Icon(
                                      Icons.toggle_off_rounded,
                                      color: Colors.grey,
                                      size: 50,
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 270,
                                  //Giving the Container width.
                                  child: Divider(
                                    height: 50,
                                    thickness: 1.5,
                                    color: Colors.grey[100],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //Using the mainAxisAlignment to give space between the widgets in it.
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        //Using the crossAxisAlignment to make the widgets in it start from the left.
                                        children: [
                                          Text(
                                            "Geofence Clock-in",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),

                                          Text(
                                            "Requires GPS within 100m of clients home ",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Icon(
                                      Icons.toggle_off_rounded,
                                      color: Colors.grey,
                                      size: 50,
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  //Giving the Column a padding of all sides.
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration:
                            //Using the decoration widget to give the Container Color and Border radius
                            BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow:
                              //Using the Box shadow widget to give the Container blur radius and color.
                              [
                                BoxShadow(blurRadius: 1, color: Colors.black),
                              ],
                            ),
                            width: 350,
                            //Giving the Container width.
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      //Giving the Icon a padding of all sides.
                                      child: Icon(
                                        Icons.mark_email_unread,
                                        color: Colors.teal,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Notification Template",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  //Giving the Container a padding of all sides.
                                  child: Container(
                                    decoration:
                                    //Using the decoration widget to give the Container Color and Border radius
                                    BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow:
                                      //Using the Box shadow widget to give the Container blur radius and color.
                                      [
                                        BoxShadow(
                                          blurRadius: 1,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              //Using the mainAxisAlignment to give space between the widgets in it.
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  //Using the crossAxisAlignment to make the widgets in it start from the left.
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.all(8.0),
                                                          //Giving the Icon a padding of all sides.
                                                          child: Icon(
                                                            Icons.mail_outlined,
                                                            color: Colors.blueAccent,
                                                          ),
                                                        ),

                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.all(8.0),
                                                          //Giving the Column a padding of all sides.
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            //Using the crossAxisAlignment to make the widgets in it start from the left.
                                                            children: [
                                                              Text(
                                                                "Shift Confirmation",
                                                                style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                  FontWeight.bold,
                                                                ),
                                                              ),

                                                              Padding(
                                                                padding:
                                                                const EdgeInsets.only(left: 8.0),
                                                                //Giving the Text a padding only on the left side.
                                                                child: Text(
                                                                  "SMS and Email",
                                                                  style: TextStyle(
                                                                    color: Colors.grey,
                                                                    fontSize: 12,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),

                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  //Giving the Icon a padding of all sides.
                                                  child: Icon(
                                                    Icons.edit,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  //Giving the Container a padding of all sides.
                                  child: Container(
                                    decoration:
                                    //Using the decoration widget to give the Container Color and Border radius.
                                    BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow:
                                      //Using the Box shadow widget to give the Container blur radius and color.
                                      [
                                        BoxShadow(
                                          blurRadius: 1,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              //Using the mainAxisAlignment to give space between the widgets in it.
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  //Using the crossAxisAlignment to make the widgets in it start from the left.
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.all(8.0),
                                                          //Giving the Icon a padding of all sides.
                                                          child: Icon(
                                                            Icons.warning,
                                                            color: Colors.orange[500],
                                                          ),
                                                        ),

                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.all(8.0),
                                                          //Giving the Column a padding of all sides.
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            //Using the crossAxisAlignment to make the widgets in it start from the left.
                                                            children: [
                                                              Text(
                                                                "Credential Expiry",
                                                                style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 16,
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),

                                                              Padding(
                                                                padding:
                                                                const EdgeInsets.only(left: 8.0),
                                                                //Giving the Text a padding only on the left side.
                                                                child: Text(
                                                                  "Email only (30 days prior)",
                                                                  style: TextStyle(
                                                                    color: Colors.grey,
                                                                    fontSize: 12,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),

                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  //Giving the Icon a padding of all sides.
                                                  child: Icon(
                                                    Icons.edit,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  //Giving the Column a padding of all sides.
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration:
                            //Using the decoration widget to give the Container Color and Border radius
                            BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow:
                              //Using the Box shadow widget to give the Container blur radius and color.
                              [
                                BoxShadow(blurRadius: 1.5, color: Colors.red),
                              ],
                            ),
                            width: 350,
                            //Giving the Container width.
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              //Using the crossAxisAlignment to make the widgets in it start from the left.
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      //Giving the Icon a padding of all sides.
                                      child: Icon(
                                        Icons.delete_forever_outlined,
                                        color: Colors.red[700],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      //Giving the Text a padding of all sides.
                                      child: Text(
                                        "Danger Zone",
                                        style: TextStyle(
                                          color: Colors.red[700],
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0,bottom: 8),
                                  //Giving the Text a padding only on the left side and bottom side.
                                  child: Text(
                                    "Irreversible actions for your Organization",
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  //Giving the Container a padding of all sides.
                                  child: Container(
                                    decoration:
                                    //Using the decoration widget to give the Container Color and Border radius
                                    BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow:
                                      //Using the Box shadow widget to give the Container blur radius and color.
                                      [
                                        BoxShadow(
                                          blurRadius: 1,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              //Using the mainAxisAlignment to give space between the widgets in it.
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  //Using the crossAxisAlignment to make the widgets in it start from the left.
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.all(8.0),
                                                          //Giving the Column a padding of all sides.
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            //Using the crossAxisAlignment to make the widgets in it start from the left.
                                                            children: [
                                                              Text(
                                                                "Export Organization Data",
                                                                style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 16,
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),

                                                              Padding(
                                                                padding:
                                                                const EdgeInsets.only(left: 3.0),
                                                                //Giving the Text a padding only on the left side.
                                                                child: Text(
                                                                  "Download all record as CSV",
                                                                  style: TextStyle(
                                                                    color: Colors.grey,
                                                                    fontSize: 12,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),

                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  //Giving the Container a padding of all sides.
                                                  child: Container(
                                                    width: 70,
                                                    //Giving the Container width.
                                                    height: 30,
                                                    //Giving the Container height.
                                                    decoration:
                                                    //Using the decoration widget to give the Container Color and Border radius
                                                    BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                      BorderRadius.circular(4,),
                                                      boxShadow:
                                                      //Using the Box shadow widget to give the Container blur radius and color.
                                                      [
                                                        BoxShadow(
                                                          blurRadius: 1,
                                                          color: Colors.grey,
                                                        ),
                                                      ],
                                                    ),
                                                    child: Center(
                                                      //Making the Text to be at the center of the Container.
                                                      child: Text(
                                                        "Export",
                                                        style: TextStyle(
                                                          fontSize: 13,
                                                          fontWeight:
                                                          FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  //Giving the Container a padding of all sides.
                                  child: Container(
                                    decoration:
                                    //Using the decoration widget to give the Container Color and Border radius
                                    BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow:
                                      //Using the Box shadow widget to give the Container blur radius and color.
                                      [
                                        BoxShadow(
                                          blurRadius: 1.5,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              //Using the mainAxisAlignment to give space between the widgets in it.
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  //Using the crossAxisAlignment to make the widgets in it start from the left.
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets.all(8.0),
                                                          //Giving the Column a padding of all sides.
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            //Using the crossAxisAlignment to make the widgets in it start from the left.
                                                            children: [
                                                              Text(
                                                                "Deactivate Organization",
                                                                style: TextStyle(
                                                                  color: Colors.red[600],
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                  FontWeight.bold,
                                                                ),
                                                              ),

                                                              Padding(
                                                                padding:
                                                                const EdgeInsets.only(left: 2.0),
                                                                //Giving the Text a padding only on the left sid.
                                                                child: Text(
                                                                  "Suspend all access immediately",
                                                                  style: TextStyle(
                                                                    color: Colors.red,
                                                                    fontSize:
                                                                    12,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),

                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  //Giving the Container a padding of all sides.
                                                  child: Container(
                                                    width: 90,
                                                    //Giving the Container width.
                                                    height: 30,
                                                    //Giving the Container height.
                                                    decoration:
                                                    //Using the decoration widget to give the Container Color and Border radius
                                                    BoxDecoration(
                                                      color: Colors.red[700],
                                                      borderRadius: BorderRadius.circular(6),
                                                    ),
                                                    child: Center(
                                                      //Making the Text to be at the center of the Container.
                                                      child: Text(
                                                        "Deactivate",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 13,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
