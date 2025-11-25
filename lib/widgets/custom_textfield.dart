import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  //initializing formal parameters required this.label or this.label
  const CustomTextField({super.key, required this.label, this.textEditingController});
  //creating a field parameter then pass it above inside super.key
  final String label;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      //passed the final TextEditing controller here
      controller: textEditingController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        //passed the final String label the field cfaeted up here 
        labelText: label,
        
      ),
    );
  }
}
