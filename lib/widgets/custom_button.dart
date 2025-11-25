import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, 
    required this.text,
    this.onPressed //here if we add required, it will show error
  });
  final String text;
  final Function()? onPressed;  
  //this constructor parameter is for button(sign in and sign up)this 
  //enables us to click on sign in and move to home and then if we click 
  //on sign up we move to sign in or login, we will now go the respective 
  //pages and pass the routings

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(550, 55), //width, height
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      onPressed: onPressed,
      child: Text(text,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
    );
  }
}