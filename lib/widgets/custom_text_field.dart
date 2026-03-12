import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required TextEditingController controller,
    required this.labelText,
    required this.prefixIcon,
  }) : _nameController = controller;

  final TextEditingController _nameController;
  final String labelText;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _nameController,
      decoration: InputDecoration(
        label: Text(labelText),
        prefixIcon: Icon(prefixIcon),
        suffixIcon: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
