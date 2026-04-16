import 'package:flutter/material.dart';
// this is to start the app
void main() {
  runApp(MyApp()); //this is to run ur app
}

class MyApp extends StatelessWidget { //This is the main house widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(//open the profile screen first/first screen opening
      debugShowCheckedModeBanner: false,// remove the debug banner
      home: ProfileScreen(),// open proflie screeno
    );
  }
}
//profile screen(our main page)
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(// this is likd
      //background color of the whole screen
      backgroundColor: Color(0xFFF7F8FA),
      body: SafeArea(// makes the UIfrom touching the edge of the screen
        child:  SingleChildScrollView(  //makes the profile screen scrollable
          child: Column( //arranges items from the top of the screen to the bottom of the screen
            children: [

              // 🔙 Top Row //(its make putting of back buttons and reference)
              Padding(
                padding: const EdgeInsets.all(16), // its is meant for spacing around nd within the row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, //help pushes item seperately from each other
                  children: [
                   SizedBox.square(
                  dimension: 35,
                      child: Icon(Icons.arrow_back, color: Colors.blueAccent), //shows an arrow icon
                    ),
                    // referral box
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),//this show that the will be inside spacing
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,//this is the background colour of the box created
                        borderRadius: BorderRadius.circular(20),//this shows that it will be in a rounded shape
                      ),
                      child: Text("Referrals: 10",// this shows the referrals of 20
                          style: TextStyle(color: Colors.blueAccent)),// this shows the color of the text to be written
                    )
                  ],
                ),
              ),

              // 👤 Profile Image
              SizedBox( // this shows how the shape of the profile pic will show the screen
                height : 10 // this is the size of box
              ),

              SizedBox(height: 10),// space

              // 👤 Name
              Text(
                "lois Christian",//the name of the user
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),//text size
              ),

              SizedBox(height: 5),

              // ✅ Subtitle // this is the subtext that will show under the users name
              Text(
                "Verified User",
                style: TextStyle(color: Colors.grey),// text style and the colour on how the text will look like
              ),

              SizedBox(height: 20),

              // 💰 Card
              Container( //this shows the white box on the screen
                margin: EdgeInsets.symmetric(horizontal: 16), // this gives it space outside
                padding: EdgeInsets.all(16),// this gives it space inside
                decoration: BoxDecoration(
                  color: Colors.white,// this show the of the background which is white colour
                  borderRadius: BorderRadius.circular(16),//this makes it all have rounded corners
                ),
                // this is for the inside card on the screen
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,// this shows the direction to align to the left
                  children: [
                    // this the title
                    Text(
                      "Earn in naria by referring your friends!",//this is an additional text
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),//this the text size on how it will look like on the screeen
                    ),
                    SizedBox(height: 5),
                   // Description on the on what to do
                    Text(
                      "You and your friend can earn after working a shift sign now.",
                      style: TextStyle(color: Colors.grey),//this the color on how the text will show
                    )
                  ],
                ),
              ),

              SizedBox(height: 20),

              // 📋 Menu List// this are repeatable item
              buildMenuItem(Icons.person, "Profile"),
              buildMenuItem(Icons.calendar_today, "My Shifts"),
              buildMenuItem(Icons.group, "My Care Team"),
              buildMenuItem(Icons.payment, "Payment Methods"),
              buildMenuItem(Icons.attach_money, "Earnings"),
              buildMenuItem(Icons.work, "Job Applications"),
              buildMenuItem(Icons.star, "BestCare Score"),
              buildMenuItem(Icons.history, "Session History"),
              buildMenuItem(Icons.report, "Dispute Resolutions"),

    ],
          ),
        ),
    ));
  }
  }

  // 🔹 Reusable Menu Item// thi show the funtions to create a menu items which was listed above
  Widget buildMenuItem(IconData icon, String title) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),// this is the spacing that shows outside
      padding: EdgeInsets.all(14),//this is the inside spacing
      decoration: BoxDecoration(
        color: Colors.white,//this shows the colour of the background
        borderRadius: BorderRadius.circular(12),// rounded corners
      ),
      child: Row(  // this shows the horizontal layout
        children: [
          CircleAvatar(
            backgroundColor: Colors.teal.shade50, // the color of the backgroud
            child: Icon(icon, color: Colors.teal),// icon colour
          ),
          SizedBox(width: 15),// space
          // text title
          Expanded(
            child: Text(title, style: TextStyle(fontSize: 16)),// textsize
          ),
          Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey) //the colour of the icon
        ],
      ),
    );
  }

