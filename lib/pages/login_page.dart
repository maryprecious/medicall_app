import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicall_app/widgets/social_icons.dart';
import 'package:medicall_app/widgets/custom_button.dart';
import 'package:medicall_app/widgets/custom_textfield.dart';
import 'package:medicall_app/widgets/password_textfield.dart';
// import 'package:medicall_app/widgets/social_signin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 120),
            //this both where copied to sign up page, wrapped in a 
            //COLuMN and extracted as a seperate widget that will 
            //take tittle and subtittle,  
            //this will be passed into the constructor and you can 
            //call it within anywhere within the app the only thing 
            //that can change is what will be the tittle and subtittle 
            //when you use it, you can change it and it will not affect 
            //the styles just the constructor parameter you made as(final String label; )and pass through the 
            //constructor above it as required(const CustomTextField({super.key, required this.label});),
            // which i did for custom text_field , 
            //it will now be reusable by removing the email text and calling the label there as(CustomTextField(label: "Email"),).
            //you can nownexport the widget you extracted by creating a new file inside your widget folder 
            //the name will tally with the widget name you have extracted, cut and paste the widgets and add them
            //to the new respective file you created.
            //also ensure you add missing package by pressing ctrl dot.
            Text(
              "Welcome Back",
              textAlign: TextAlign.center,
              style: GoogleFonts.playfairDisplay(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Long time no see",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            // SizedBox(height: 32),
            //custom text field

            // TextField(
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(16),
            //     ),
            //     labelText: "Email",
            //   ),
            // ),
            // SizedBox(height: 16),
            // TextField(
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(16),
            //     ),
            //     labelText: "Password",
            //   ),
            //   obscureText: true,
            // ),
            // SizedBox(height: 16),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     fixedSize: Size(500, 55), //width, height
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(15),
            //     ),
            //     backgroundColor: Colors.blue,
            //     foregroundColor: Colors.white,
            //   ),
            //   onPressed: () {},
            //   child: Text(
            //     "Login",
            //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //   ),
            // ),
            SizedBox(height: 30),
            CustomTextField(label: "Email",
            textEditingController: emailController,
            ),
            SizedBox(height: 16),
            PasswordTextfield(
              textEditingController: passwordController,
            ),
            SizedBox(height: 16),
            CustomButton(
              text: "Login",
              onPressed: () {
                //creating step to
                //check email and password if/not correct return a scafoold snackbar message 
                if(emailController.text != "anto@gmail.com"){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("email not correct try again")),
                  );
                  return;
                }

                if(passwordController.text != "23456"){
                  //its either you show snackbar or aler dialog
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(content: Text("Password not correct try again")),
                  // );

                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      content: Text("Not a valid password try again"),
                      //if you want to show a button under you use
                      //action:[ElavatedButton],,,,,this one does not vanish
                      // by it self you have to press
                    );
                  });
                  return;
                }
                //here removed the top above from my if &&
                // if( && ){
                //   Navigator.of(context).pushReplacementNamed("/home");
                // }else{
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     SnackBar(content: Text("Password not correct try again")),
                //   ); 
                // }

                // print(emailController.text);
                //uncomment later
                // Navigator.of(context).pushReplacementNamed("/home");
              },
            ),
              SizedBox(height: 30),
            // Row(
            //   spacing: 8,
            //   mainAxisSize: MainAxisSize.max,
            //   children: [
            //     Expanded(child: Divider()),
            //     Text("Sign up with",
            //     style: TextStyle(fontSize: 15,
            //   ),),
            //     Expanded(child: Divider()),
            //   ],
            // ),
            // SizedBox(height: 30),
            //social icons
           SocialIcons(text: "Sign in with"),


            SizedBox(height: 36),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed("/signup");
                  },
                  child: Text("Sign up", style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
