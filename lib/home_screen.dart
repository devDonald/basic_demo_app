import 'package:flutter/material.dart';

//this is my main screen widget
//Stateless means nothing on this screen is changing dynamically
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(//this provides the theme and app structure for my screen UI

      debugShowCheckedModeBanner: false,//this removes the red debug banner at the top right

      home: Scaffold(//this is to provide an initial structure for my screen
        backgroundColor: Colors.white,//this gives my entire screen a white background

        appBar: AppBar(//this creates the top bar of the screen like a header
          backgroundColor: Colors.white,//this makes the app bar white instead of the default blue
          elevation: 0,//this removes the shadow under the app bar so it looks flat

          leading: Padding(//this is wrapping my profile image to give it spacing
            padding: const EdgeInsets.all(8.0),//this gives equal spacing (8px) on all sides

            child: CircleAvatar(//this creates a circular container for my profile image
              backgroundImage: const AssetImage("assets/Pix1.jpeg"),//this loads my image from the assets folder
              backgroundColor: Colors.grey.shade200,//this shows a light grey background if the image fails or is loading
            ),
          ),

          title: Column(//this allows me to stack text vertically inside the app bar
            mainAxisSize: MainAxisSize.min,//this keeps the column compact instead of stretching
            crossAxisAlignment: CrossAxisAlignment.start,//this aligns everything inside to the left
            children: [//children means the widgets inside this column

              Text(//this displays my greeting text
                "Hello, Sandra!",
                style: TextStyle(
                  color: Colors.black,//text color
                  fontSize: 18,//text size
                  fontStyle: FontStyle.italic,//makes the text italic
                  fontWeight: FontWeight.w800,//makes the text bold
                ),
              ),

              const SizedBox(height: 4),//this adds small vertical spacing

              Row(//this arranges the next texts horizontally
                children: const [//children here are arranged side by side

                  Text(
                    "Next shift in ",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,//slightly faded text
                    ),
                  ),

                  Text(
                    "2hrs",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,//makes this part bold
                      color: Colors.black,
                    ),
                  ),

                  Text(
                    " • Available",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.green,//green indicates status
                    ),
                  ),
                ],
              ),
            ],
          ),

          actions: [//this is the right side of the app bar
            Padding(
              padding: const EdgeInsets.all(8.0),//adds spacing around the icon

              child: Container(//this wraps the icon so I can style it
                padding: const EdgeInsets.all(8.0),//space inside the container around the icon

                decoration: const BoxDecoration(//this is used to style the container
                  shape: BoxShape.circle,//this makes the container circular
                  color: Colors.grey,//this gives the container a grey background
                ),

                child: const Icon(//this displays the notification icon
                  Icons.notifications_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),

        body: SingleChildScrollView(//this allows the whole screen to scroll vertically
          physics: ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),//this adds space around all my content

            child: Column(//this arranges everything vertically down the screen
              children: [

                Row(//this is my location row
                  children: [

                    const Icon(
                      Icons.location_on,//location icon
                      color: Colors.tealAccent,
                      size: 17,
                    ),

                    const SizedBox(width: 8),//space between icon and text

                    const Expanded(//this makes the text take available space
                      child: Text(
                        "123 Wellness Ave, Austin, Tx",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black87,
                        ),
                      ),
                    ),

                    const Icon(
                      Icons.arrow_forward_ios,//arrow icon at the end
                      size: 17,
                      color: Colors.teal,
                    ),
                  ],
                ),

                const SizedBox(height: 20),//space before next section

                Container(//this is my purple banner card
                  width: double.infinity,//this makes it stretch full width
                  padding: const EdgeInsets.all(16),//space inside the container

                  decoration: BoxDecoration(//this is for styling the container
                    color: Colors.purple,//background color
                    borderRadius: BorderRadius.circular(15),//this gives rounded corners
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,//align text to left
                    children: [

                      const Text(
                        "Easily Share Your Care Plan\nWith Family",//the \n moves with family to the next line
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),

                      const SizedBox(height: 12),

                      Container(//this acts like a button
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,//left and right spacing
                          vertical: 8,//top and bottom spacing
                        ),

                        decoration: BoxDecoration(
                          color: Colors.green,//button color
                          borderRadius: BorderRadius.circular(20),//rounded edges
                        ),

                        child: const Text(
                          "Manage Sharing",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                Row(//overview header row
                  children: [

                    const Text(
                      "Overview",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    const Spacer(),//pushes the next widget to the far right

                    Container(//this holds the date
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),

                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: Row(
                        children: const [
                          Icon(Icons.calendar_today, size: 14),
                          SizedBox(width: 5),
                          Text("May 9, 2025"),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                Row(//to add small action boxes row
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,//spaces them evenly
                  children: [
                    smallBox(Icons.access_time, "5", "Active Session"),
                    smallBox(Icons.notifications, "5", "Alerts"),
                    smallBox(Icons.emergency, "9", "Emergency"),
                    smallBox(Icons.task_alt, "4", "Daily Task"),
                  ],
                ),

                const SizedBox(height: 25),

                Row(//production header row
                  children: const [
                    Text("Active Productions",
                        style: TextStyle(fontWeight: FontWeight.w800)),
                    Spacer(),
                    Text("See All"),
                  ],
                ),

                const SizedBox(height: 15),

                Row(//production cards row
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,//spreads boxes across row
                  children: [
                    productionBox("Stardust", "12 caregivers", "assets/Pix2.jpeg"),
                    productionBox("Moonlight", "6 caregivers", "assets/Pix3.jpeg"),
                    productionBox("Blue Sky", "6 caregivers", "assets/Pix4.jpeg"),
                  ],
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //this creates reusable small action boxes
  Widget smallBox(IconData icon, String number, String title) {
    return Container(
      width: 75,
      padding: const EdgeInsets.all(10),

      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),

      child: Column(
        children: [
          Icon(icon),
          const SizedBox(height: 6),
          Text(number),
          const SizedBox(height: 4),
          Text(title, textAlign: TextAlign.center),
        ],
      ),
    );
  }

  //this creates reusable production cards with image + text
  Widget productionBox(String title, String subtitle, String imagePath) {
    return SizedBox(
      width: 100,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            height: 90,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),

              image: DecorationImage(
                image: AssetImage(imagePath),//loads image from assets
                fit: BoxFit.cover,//fills container properly
              ),
            ),
          ),

          const SizedBox(height: 8),

          Text(title, style: const TextStyle(fontWeight: FontWeight.w800)),

          Text(subtitle),
        ],
      ),
    );
  }
}