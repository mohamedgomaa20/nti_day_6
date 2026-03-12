import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nti_dat_6/widgets/custom_avatar_image.dart';
import 'package:nti_dat_6/widgets/custom_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _nameController = TextEditingController(
    text: "Mohamed Gomaa",
  );
  final TextEditingController _emailController = TextEditingController(
    text: "20mohamedgomaa@gmail.com",
  );
  final TextEditingController _phoneController = TextEditingController(
    text: "01002418816",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "Edit Profile",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                CustomAvatarImage(),
                SizedBox(height: 20),
                CustomTextField(
                  controller: _nameController,
                  labelText: "Name",
                  prefixIcon: Icons.person,
                ),
                SizedBox(height: 20),
                CustomTextField(
                  controller: _emailController,

                  labelText: "Email",
                  prefixIcon: Icons.email_outlined,
                ),
                SizedBox(height: 20),
                CustomTextField(
                  controller: _phoneController,
                  labelText: "Phone",
                  prefixIcon: Icons.phone,
                ),
                SizedBox(height: 20),

                Container(
                  height: 150,
                  width: 150,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: .circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/avater.png"),
                    ),
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
