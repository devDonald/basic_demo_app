// Import Flutter material design (gives us UI tools like buttons, text, colors)
import 'package:flutter/material.dart';

// 🚀 This starts the app
void main() {
  runApp(MyApp()); // Runs your app
}

// 🏠 Main App Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      home: ProfileScreen(), // First screen that opens
    );
  }
}

// 👤 Profile Screen (your main page)
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 🎨 Background color of the whole screen
      backgroundColor: Color(0xFFF7F8FA),

      body: SafeArea( // Prevents UI from touching phone edges
        child: SingleChildScrollView( // Makes screen scrollable
          child: Column( // Arranges items vertically (top to bottom)
            children: [

              // 🔝 TOP ROW (Back button + Referrals)
              Padding(
                padding: const EdgeInsets.all(16), // Space around row
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Push items apart
                  children: [

                    // 🔙 Back Button (round)
                    CircleAvatar(
                      backgroundColor: Colors.teal.shade50, // Light green background
                      child: Icon(Icons.arrow_back, color: Colors.teal), // Arrow icon
                    ),

                    // 💰 Referral Box
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6), // Inside spacing
                      decoration: BoxDecoration(
                        color: Colors.teal.shade50, // Background color
                        borderRadius: BorderRadius.circular(20), // Rounded shape
                      ),
                      child: Text(
                        "Referrals: 1",
                        style: TextStyle(color: Colors.teal), // Text color
                      ),
                    )
                  ],
                ),
              ),

              // 👤 PROFILE IMAGE (round picture)
              CircleAvatar(
                radius: 45, // Size of circle
                backgroundImage: AssetImage('assets/profile.jpg'), // Image from assets
              ),

              SizedBox(height: 10), // Space

              // 👤 USER NAME
              Text(
                "Sarah Johnes",
                style: TextStyle(
                  fontSize: 20, // Text size
                  fontWeight: FontWeight.bold, // Bold text
                ),
              ),

              SizedBox(height: 5),

              // ✅ SUBTITLE (small text under name)
              Text(
                "Verified Caregiver",
                style: TextStyle(color: Colors.grey),
              ),

              SizedBox(height: 20),

              // 💰 REFERRAL CARD (white box)
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16), // Space outside
                padding: EdgeInsets.all(16), // Space inside
                decoration: BoxDecoration(
                  color: Colors.white, // White background
                  borderRadius: BorderRadius.circular(16), // Rounded corners
                ),

                // Inside the card
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align left
                  children: [

                    // Title
                    Text(
                      "Earn \$150 by referring your friends!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),

                    SizedBox(height: 5),

                    // Description
                    Text(
                      "You and your friend can earn after working a shift.",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),

              SizedBox(height: 20),

              // 📋 MENU LIST (reusable items)
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
      ),
    );
  }

  // 🔹 FUNCTION TO CREATE MENU ITEMS (Reusable)
  Widget buildMenuItem(IconData icon, String title) {

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6), // Space outside
      padding: EdgeInsets.all(14), // Space inside
      decoration: BoxDecoration(
        color: Colors.white, // White background
        borderRadius: BorderRadius.circular(12), // Rounded corners
      ),

      child: Row( // Horizontal layout
        children: [

          // 🟢 Icon circle
          CircleAvatar(
            backgroundColor: Colors.teal.shade50,
            child: Icon(icon, color: Colors.teal),
          ),

          SizedBox(width: 15), // Space

          // 📄 Text title
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
          ),

          // ➡️ Arrow icon
          Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}