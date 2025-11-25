import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialIcons extends StatelessWidget {
  // const SocialIcons({super.key});
  
  const SocialIcons({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {

     return Column(
      children: [
        Row(
          spacing: 8,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(child: Divider()),
            Text(text),
            Expanded(child: Divider()),
          ],
        ),
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: [
            InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/facebook.png",
                width: 55,
                height: 55,
              ),
            ),
            SizedBox(width: 35),
            InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/google.png",
                width: 50,
                height: 50,
              ),
            ),
            SizedBox(width: 35),
            InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/twitter.png", 
                width: 50, 
                height: 50
                ),
            ),
              SizedBox(width: 35),
             InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/icons8-linkedin-logo-50.png",
                width: 50,
                height: 50,
              ),
            ),
          ],
        ),
      ],
    );
    // return Row(
       
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             IconButton(
    //               onPressed: () {},
    //               icon: FaIcon(
    //                 FontAwesomeIcons.facebook,
    //                 color: Colors.blue,
    //                 size: 45,
    //                 weight: 45,
    //               ),
    //             ),

    //             // Text("Icons here"),
    //             SizedBox(width: 35),

    //             IconButton(
    //               onPressed: () {},
    //               icon: FaIcon(
    //                 FontAwesomeIcons.tiktok,
    //                 color: Colors.blue,
    //                 size: 45,
    //                 weight: 45,
    //               ),
    //             ),

    //             SizedBox(width: 35),

    //             IconButton(
    //               onPressed: () {},
    //               icon: FaIcon(
    //                 FontAwesomeIcons.linkedin,
    //                 color: Colors.blue,
    //                 size: 45,
    //                 weight: 45,

    //                 // width: 40,
    //                 // height: 40,
    //               ),
    //             ),

    //             SizedBox(width: 35),

    //             IconButton(
    //               onPressed: () {},
    //               icon: FaIcon(
    //                 FontAwesomeIcons.google,
    //                 color: Colors.blue,
    //                 size: 45,
    //                 weight: 45,
    //               ),
    //             ),
    //           ],
          
            
    // );
  }
}