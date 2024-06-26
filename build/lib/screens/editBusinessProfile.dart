import 'package:flutter/material.dart';

class EditBusinessProfile extends StatefulWidget {
  @override
  _EditBusinessProfileState createState() => _EditBusinessProfileState();
}

class _EditBusinessProfileState extends State<EditBusinessProfile> {
  TextEditingController businessController = TextEditingController();
  TextEditingController managerController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController bioController = TextEditingController();

  @override
  void initState() {
    super.initState();
    businessController.text = "G-Connect Mobile Accessories";
    managerController.text = "Joseph Akurugu Avoka";
    emailController.text = "hello@halallab.co";
    phoneController.text = "408-841-0926";
    bioController.text = "I love fast food";
  }

  @override
  void dispose() {
    businessController.dispose();
    managerController.dispose();
    emailController.dispose();
    phoneController.dispose();
    bioController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Business Profile"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.orange[100],
                child: IconButton(
                  icon: Icon(Icons.edit, color: Colors.orange),
                  onPressed: () {
                    // Handle profile picture change
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            buildTextField("BUSINESS", businessController),
            buildTextField("MANAGER", managerController),
            buildTextField("EMAIL", emailController),
            buildTextField("PHONE NUMBER", phoneController),
            buildTextField("BIO", bioController),
            Spacer(),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  _saveProfileChanges();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.cyan),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                child: Text(
                  "SAVE",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }

  void _saveProfileChanges() {
    // Implement logic to save changes
    String businessName = businessController.text;
    String managerName = managerController.text;
    String email = emailController.text;
    String phoneNumber = phoneController.text;
    String bio = bioController.text;

    // Example of what to do with the data (printing for demonstration)
    print("Business Name: $businessName");
    print("Manager Name: $managerName");
    print("Email: $email");
    print("Phone Number: $phoneNumber");
    print("Bio: $bio");

    // Normally, you would save this data to your backend or wherever it needs to be persisted.
  }
}
