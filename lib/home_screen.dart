import 'package:flutter/material.dart';

//this is my HomeScreen class
//it extends StatelessWidget because nothing here is changing dynamically for now
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(//this provides the theme and app structure for my screen UI
      home: Scaffold(//this is to provide an initial structure for my screen
        backgroundColor: Colors.white,//this is to give a white background color to my scaffold

        appBar: AppBar(//this creates the top bar of the screen like the header section
          backgroundColor: Colors.white,//to make the background of the app bar white
          elevation: 0,//this removes the shadow under the app bar

          leading: Padding(//this adds space around the widget on the left side of the app bar
            padding: const EdgeInsets.all(8.0),//this gives equal spacing of 8 on all sides

            child: CircleAvatar(//this creates a circular widget, mostly used for profile pictures
              backgroundImage: const AssetImage("android/assets/Pix1.jpeg"),//this loads my profile image from the assets folder
              backgroundColor: Colors.grey.shade200,//this gives a light grey background in case the image is not visible at first
            ),
          ),

          title: Column(//this is to arrange the title section vertically
            mainAxisSize: MainAxisSize.min,//this keeps the column only as tall as the widgets inside it
            crossAxisAlignment: CrossAxisAlignment.start,//this aligns everything inside the column to the left
            children: [//these are the widgets that go inside this column
              Text(//this displays the greeting text
                "Hello, Sandra!",
                style: TextStyle(
                  color: Colors.black,//this gives the text a black color
                  fontSize: 18,//this sets the text size
                  fontStyle: FontStyle.italic,//this makes the text italic
                  fontWeight: FontWeight.w800,//this makes the text bold
                ),
              ),

              const SizedBox(height: 4),//this adds a small vertical space between the greeting and the next row

              Row(//this is to arrange the shift text horizontally
                children: const [//these are the widgets inside this row
                  Text(
                    "Next shift in ",
                    style: TextStyle(
                      fontSize: 12,//this sets the size of the text
                      color: Colors.black54,//this gives it a lighter black color
                    ),
                  ),
                  Text(
                    "2hrs",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,//this makes this part bold so it stands out
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    " • Available",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.green,//this makes the availability status green
                    ),
                  ),
                ],
              ),
            ],
          ),

          actions: [//this holds the widgets that appear on the right side of the app bar
            Padding(//this wraps the notification icon with spacing
              padding: const EdgeInsets.all(8.0),//this adds equal spacing around the icon container

              child: Container(//this is wrapping the icon so I can style it
                padding: const EdgeInsets.all(8.0),//this adds space inside the container around the icon

                decoration: const BoxDecoration(//this is to style the look of the container
                  shape: BoxShape.circle,//this makes the container circular
                  color: Colors.grey,//this gives the circular container a grey background
                ),

                child: const Icon(//this is the notification bell icon
                  Icons.notifications_outlined,
                  color: Colors.black,//this makes the icon black
                ),
              ),
            ),
          ],
        ),

        body: SingleChildScrollView(//this makes the whole page scroll vertically
          physics: ScrollPhysics(),//this tells flutter to apply the default scrolling behavior
          child: Padding(//this wraps all the screen content with spacing
            padding: const EdgeInsets.all(16.0),//this gives equal spacing of 16 on all sides

            child: Column(//this arranges all the body content vertically
              children: [//these are all the widgets inside the body column

                Row(//this is the location row
                  children: [//these are the widgets inside the location row
                    const Icon(
                      Icons.location_on,//this is the location pin icon
                      color: Colors.tealAccent,//this gives the icon a teal accent color
                      size: 17,//this sets the icon size
                    ),

                    const SizedBox(width: 8),//this adds horizontal spacing between the icon and the text

                    const Expanded(//this makes the text take up the remaining available horizontal space
                      child: Text(
                        "123 Wellness Ave, Austin, Tx",
                        style: TextStyle(
                          fontSize: 17,//this sets the text size
                          color: Colors.black87,//this gives the text a slightly softer black
                        ),
                      ),
                    ),

                    const Icon(
                      Icons.arrow_forward_ios,//this is the small arrow icon at the end
                      size: 17,//this sets the icon size
                      color: Colors.teal,//this gives the icon a teal color
                    ),
                  ],
                ),

                const SizedBox(height: 20),//this adds vertical spacing before the next section

                Container(//this is the purple banner section
                  width: double.infinity,//this makes the container take the full available width
                  padding: const EdgeInsets.all(16),//this adds space inside the banner

                  decoration: BoxDecoration(//this is used to style the banner container
                    color: Colors.purple,//this gives the banner its purple background color
                    borderRadius: BorderRadius.circular(15),//this rounds the corners of the banner
                  ),

                  child: Column(//this arranges the banner content vertically
                    crossAxisAlignment: CrossAxisAlignment.start,//this aligns the banner texts to the left
                    children: [
                      const Text(
                        "Easily Share Your Care Plan\nWith Family",
                        style: TextStyle(
                          color: Colors.white,//this makes the text white
                          fontSize: 20,//this sets the text size
                          fontWeight: FontWeight.w800,//this makes the text bold
                        ),
                      ),

                      const SizedBox(height: 12),//this adds spacing before the green button-like box

                      Container(//this acts like the green button inside the banner
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,//this adds left and right spacing inside the container
                          vertical: 8,//this adds top and bottom spacing inside the container
                        ),

                        decoration: BoxDecoration(//this styles the green button-like container
                          color: Colors.green,//this gives it a green background
                          borderRadius: BorderRadius.circular(20),//this makes its corners more rounded
                        ),

                        child: const Text(
                          "Manage Sharing",
                          style: TextStyle(
                            color: Colors.white,//this makes the text white
                            fontSize: 12,//this sets the text size
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),//this adds spacing before the overview section

                Row(//this is the row for the overview heading and date box
                  children: [
                    const Text(
                      "Overview",
                      style: TextStyle(
                        fontSize: 20,//this sets the heading size
                        fontWeight: FontWeight.w800,//this makes the heading bold
                        color: Colors.black,//this makes the heading black
                      ),
                    ),

                    const Spacer(),//this pushes the date container to the far right

                    Container(//this is the date display box
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,//this adds left and right spacing inside the date box
                        vertical: 6,//this adds top and bottom spacing inside the date box
                      ),

                      decoration: BoxDecoration(//this styles the date box
                        color: Colors.grey.shade200,//this gives it a light grey background
                        borderRadius: BorderRadius.circular(20),//this rounds the date box corners
                      ),

                      child: Row(//this arranges the calendar icon and date text horizontally
                        children: const [
                          Icon(
                            Icons.calendar_today,//this is the small calendar icon
                            size: 14,//this sets the icon size
                            color: Colors.teal,//this makes the icon teal
                          ),
                          SizedBox(width: 5),//this adds spacing between the icon and the text
                          Text(
                            "May 9, 2025",
                            style: TextStyle(
                              fontSize: 12,//this sets the date text size
                              color: Colors.black,//this makes the date text black
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15),//this adds spacing before the first row of overview cards

                Row(//this is the first row of the overview statistic cards
                  children: [
                    Expanded(//this makes the first card take up equal space in the row
                      child: Container(//this is to create the first statistic card
                        padding: const EdgeInsets.all(15),//this adds inner spacing inside the card

                        decoration: BoxDecoration(//this styles the card
                          color: Colors.grey.shade100,//this gives the card a very light grey background
                          borderRadius: BorderRadius.circular(15),//this rounds the corners of the card
                        ),

                        child: Column(//this arranges the icon, number and text vertically
                          crossAxisAlignment: CrossAxisAlignment.start,//this aligns everything inside the card to the left
                          children: const [
                            Icon(Icons.work, color: Colors.red),//this is the icon for Active Gigs
                            SizedBox(height: 10),//this adds spacing below the icon
                            Text(
                              "14",
                              style: TextStyle(
                                fontSize: 26,//this makes the number larger
                                fontWeight: FontWeight.w800,//this makes the number bold
                              ),
                            ),
                            SizedBox(height: 5),//this adds spacing between the number and the label
                            Text(
                              "Active Gigs",
                              style: TextStyle(
                                fontSize: 14,//this sets the label size
                                color: Colors.black54,//this gives the label a softer black color
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),//this adds horizontal spacing between the two cards

                    Expanded(//this makes the second card take up equal space in the row
                      child: Container(//this is the second statistic card
                        padding: const EdgeInsets.all(15),

                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(Icons.people, color: Colors.teal),//this is the icon for Caregivers
                            SizedBox(height: 10),
                            Text(
                              "28",
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Caregivers",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),//this adds spacing before the second row of overview cards

                Row(//this is the second row of the overview statistic cards
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(15),

                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(Icons.description, color: Colors.blue),//this is the icon for Requests
                            SizedBox(height: 10),
                            Text(
                              "5",
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Requests",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),//this adds spacing between the two cards

                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(15),

                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Icon(Icons.group, color: Colors.redAccent),//this is the icon for Staff Team
                            SizedBox(height: 10),
                            Text(
                              "50",
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Staff Team",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),//this adds spacing before the small action boxes

                Row(//this is the row holding the small action boxes
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,//this spreads the boxes evenly across the row
                  children: [
                    smallBox(Icons.access_time, "5", "Active Session"),//this calls my reusable smallBox widget for Active Session
                    smallBox(Icons.notifications, "5", "Alerts"),//this calls my reusable smallBox widget for Alerts
                    smallBox(Icons.emergency, "9", "Emergency"),//this calls my reusable smallBox widget for Emergency
                    smallBox(Icons.task_alt, "4", "Daily Task"),//this calls my reusable smallBox widget for Daily Task
                  ],
                ),

                const SizedBox(height: 25),//this adds spacing before the active productions section

                Row(//this is the heading row for the active productions section
                  children: const [
                    Text(
                      "Active Productions",
                      style: TextStyle(
                        fontSize: 20,//this sets the heading size
                        fontWeight: FontWeight.w800,//this makes the heading bold
                      ),
                    ),
                    Spacer(),//this pushes the See All text to the far right
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 14,//this sets the size of the See All text
                        color: Colors.teal,//this makes the text teal
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15),//this adds spacing before the production cards row

                Row(//this is the row for the production cards
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,//this spaces the cards evenly across the row
                  children: [
                    productionBox("Stardust", "12 caregivers", "assets/Pix2.jpeg"),//this calls my reusable productionBox for the first card
                    productionBox("Moonlight", "6 caregivers", "assets/Pix3.jpeg"),//this calls my reusable productionBox for the second card
                    productionBox("Blue Sky", "6 caregivers", "assets/Pix4.jpeg"),//this calls my reusable productionBox for the third card
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget smallBox(IconData icon, String number, String title) {
    return Container(//this is the reusable small action card container
      width: 75,//this sets the width of the small box
      padding: const EdgeInsets.all(10),//this adds spacing inside the small box

      decoration: BoxDecoration(//this styles the small box
        color: Colors.grey.shade100,//this gives it a light grey background
        borderRadius: BorderRadius.circular(12),//this rounds the corners
      ),

      child: Column(//this arranges the icon, number and title vertically
        children: [
          Icon(icon, color: Colors.teal, size: 20),//this shows the icon passed into the function
          const SizedBox(height: 6),//this adds spacing below the icon

          Text(
            number,//this shows the number passed into the function
            style: const TextStyle(
              fontWeight: FontWeight.w800,//this makes the number bold
              fontSize: 14,//this sets the number size
            ),
          ),

          const SizedBox(height: 4),//this adds spacing below the number

          Text(
            title,//this shows the title passed into the function
            textAlign: TextAlign.center,//this centers the text inside the small box
            style: const TextStyle(
              fontSize: 10,//this sets the title size
              color: Colors.black54,//this gives the title a softer black color
            ),
          ),
        ],
      ),
    );
  }

  Widget productionBox(String title, String subtitle, String imagePath) {
    return SizedBox(//this was to wrap the production card and define the width
      width: 100,//this sets the width of each production card

      child: Column(//this arranges the image, title and subtitle vertically
        crossAxisAlignment: CrossAxisAlignment.start,//this aligns all content inside to the left
        children: [
          Container(//this is the image box for the production card
            height: 90,//this sets the height of the image box

            decoration: BoxDecoration(//this styles the image box
              borderRadius: BorderRadius.circular(12),//this rounds the corners of the image box

              image: DecorationImage(//this is used to place an image inside the container
                image: AssetImage("android/assets/Pix3.jpeg"),//this loads the image using the path passed into the function
                fit: BoxFit.cover,//this makes the image cover the space nicely without leaving empty spaces
              ),
            ),
          ),

          const SizedBox(height: 8),//this adds spacing below the image

          Text(
            title,//this shows the title
            style: const TextStyle(
              fontWeight: FontWeight.w800,//this makes the title bold
              fontSize: 14,//this sets the title size
            ),
          ),

          Text(
            subtitle,//this shows the subtitle
            style: const TextStyle(
              fontSize: 12,//this sets the font size of the subtitle
              color: Colors.black54,//this gives the subtitle a softer black color
            ),
          ),
        ],
      ),
    );
  }
}