import 'package:flutter/material.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}
class _RegisterScreenState extends State<RegisterScreen>{

  bool _showPassword = false;// Controls whether password is visible or hidden
  bool _showConfirmPassword = false; // Controls visibility of confirm password field
  bool _agreedToTerms = false;// Tracks if user checked the terms checkbox

  // ── Reusable Input Field ───
  Widget _buildInputField({
    required String hint, // Placeholder text inside the field
    required IconData icon, // Icon displayed at the left
    TextInputType keyboardType = TextInputType.text, // Determines keyboard type (text/email/number)
  }) {
    return TextField( // Input field widget
      keyboardType: keyboardType, // Applies keyboard type
      decoration: InputDecoration( // Styling of the field
        hintText: hint, // Placeholder text
        prefixIcon: Icon(icon, color: Colors.grey), // Icon on the left

        border: OutlineInputBorder( // Default border style
          borderRadius: BorderRadius.circular(30), // Rounded corners
          borderSide: BorderSide(color: Colors.grey), // Border color
        ),

        enabledBorder: OutlineInputBorder(  // Border when field is not selected
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey),
        ),

        focusedBorder: OutlineInputBorder(   // Border when user clicks the field
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Color(0xFF00897B), // Green color
            width: 2, // Thicker border
          ),
        ),
      ),
    );
  }

  // ─ Phone Field ─
  Widget _buildPhoneField() {
    return TextField(
      keyboardType: TextInputType.phone, // Opens numeric keyboard

      decoration: InputDecoration(
        hintText: '+234 810-000-000', // Placeholder phone format

        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12), // Space inside prefix
          child: Row(
            mainAxisSize: MainAxisSize.min, // Prevents row from stretching
            children: [
              Text(
                'NG', // Country code
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_drop_down), // Dropdown icon
            ],
          ),
        ),

        border: OutlineInputBorder(  // Default border style
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey),
        ),

        enabledBorder: OutlineInputBorder( // Border when field is not selected
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Color(0xFF00897B), width: 2),
        ),
      ),
    );
  }

  // ── Password Field ──
  Widget _buildPasswordField({
    required String hint, // Placeholder text
    required bool showPassword, // Whether password is visible
    required VoidCallback onToggle, // Function to toggle visibility
  }) {
    return TextField(
      obscureText: !showPassword,
      // If false → hide text, if true → show text
      decoration: InputDecoration(
        hintText: hint,

        prefixIcon: Icon(Icons.lock_outline, color: Colors.grey),
        // Lock icon

        suffixIcon: IconButton(
          icon: Icon(
            Icons.visibility_off_outlined, // Eye icon
            color: Colors.grey,
          ),
          onPressed: onToggle, // Calls toggle function when tapped
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey),
        ),

        enabledBorder: OutlineInputBorder(// Border when field is not selected
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Color(0xFF00897B), width: 2),
        ),
      ),
    );
  }

  // ─ Social Button ─
  Widget _socialButton(String label, Color color, {bool isApple = false}) {
    return Container(
      width: 55, // Width of button
      height: 55, // Height of button

      decoration: BoxDecoration(
        color: Colors.grey.shade100, // Light background
        shape: BoxShape.circle, // Makes it circular
      ),

      child: Center(
        child: isApple
            ? Icon(Icons.apple, size: 28) // Apple icon
            : Text(
          label, // Text like G or f
          style: TextStyle(
            color: color,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // ─ Main UI ─
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Base layout structure
      backgroundColor: Colors.white, // Screen background color

      body: SafeArea( // Prevents overlap with notch/status bar
        child: SingleChildScrollView( // Makes screen scrollable
          padding: const EdgeInsets.symmetric(horizontal:24, vertical:32),

          child: Column( // Arranges children vertically
            children: [

              Icon(
                Icons.health_and_safety, // Top icon
                color: Color(0xFF00897B),
                size: 50,
              ),

              SizedBox(height: 12), // Space

              Text(
                'Create Account', // Title text
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              SizedBox(height: 28),

              _buildInputField(
                hint: 'Enter your name', // Name field
                icon: Icons.person_outline,
              ),

              SizedBox(height: 16),

              _buildInputField(
                hint: 'Enter your email', // Email field
                icon: Icons.mail_outline,
                keyboardType: TextInputType.emailAddress,
              ),

              SizedBox(height: 16),

              _buildPhoneField(), // Phone field

              SizedBox(height: 16),

              _buildPasswordField(
                hint: 'Enter password',
                showPassword: _showPassword,
                onToggle: () => setState(() => _showPassword = !_showPassword),
                // Toggles password visibility
              ),

              SizedBox(height: 16),

              _buildPasswordField(
                hint: 'Confirm password',
                showPassword: _showConfirmPassword,
                onToggle: () => setState(() =>
                _showConfirmPassword = !_showConfirmPassword),
              ),

              SizedBox(height: 16),

              _buildInputField(
                hint: 'Referral Code',
                icon: Icons.card_giftcard_outlined,
              ),

              SizedBox(height: 20),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: _agreedToTerms, // Checkbox state
                    activeColor: Color(0xFF00897B),
                    onChanged: (val) =>
                        setState(() => _agreedToTerms = val!),
                  ),

                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Text(
                        'By signing up, you agree to Terms and Conditions',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                height: 55,

                child: ElevatedButton(
                  onPressed: _agreedToTerms ? () {} : null,
                  // Disabled if not checked

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF00897B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),

                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Row(
                children: [
                  Expanded(child: Divider()), // Left line
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text('Or'), // Middle text
                  ),
                  Expanded(child: Divider()), // Right line
                ],
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _socialButton('G', Colors.red), // Google
                  SizedBox(width: 16),
                  _socialButton('', Colors.black, isApple: true), // Apple
                  SizedBox(width: 16),
                  _socialButton('f', Colors.blue), // Facebook
                ],
              ),

              SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account? '),
                  Text(
                    'Sign In',
                    style: TextStyle(
                      color: Color(0xFF00897B),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}