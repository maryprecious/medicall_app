import 'package:flutter/material.dart';

class PasswordTextfield extends StatefulWidget {
  const PasswordTextfield({
    super.key,
    this.textEditingController,
  });
  final TextEditingController? textEditingController;

  @override
  State<PasswordTextfield> createState() => _PasswordTextfieldState();
}

class _PasswordTextfieldState extends State<PasswordTextfield> {
  //create field for eye icon toggel
  var isVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.textEditingController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        labelText: "Password",
        //icon eye toggle field and setState
        suffix: InkWell(onTap: () {
          setState(() {
            isVisible = !isVisible;
          });
          //ternary operator used here for icon eye toggle
        },child: Icon(isVisible ? Icons.visibility : Icons.visibility_off))
      ),
      //performing check for the field up
      obscureText: !isVisible,
    );
  }
}