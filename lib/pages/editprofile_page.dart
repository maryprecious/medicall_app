import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});
  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  File? image;

  var nameCtrl = TextEditingController(text: "Hannah Micheal");

  var emailCtrl = TextEditingController(text: "hannahmail@gnail.com");

  bool hidePass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
        // actions: [
        //   TextButton(
        //     onPressed: () => Navigator.pop(context),
        //     child: const Text("Save"),
        //   ),
        // ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            // Profile picture (tap to change)
            GestureDetector(
              onTap: () async {
                final picked = await ImagePicker().pickImage(
                  source: ImageSource.gallery,
                );

                if (picked != null) setState(() => image = File(picked.path));
              },

              child: CircleAvatar(
                radius: 60,

                backgroundImage: image != null
                    ? FileImage(image!)
                    : const AssetImage("assets/profile_pics.png")
                          as ImageProvider,

                child: const Align(
                  alignment: Alignment.bottomRight,

                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.camera_alt,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 40),

            // Name
            TextField(
              controller: nameCtrl,
              decoration: const InputDecoration(
                labelText: "Full Name",
                prefixIcon: Icon(Icons.person),
              ),
            ),

            const SizedBox(height: 16),

            // Email
            TextField(
              controller: emailCtrl,
              decoration: const InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
              ),
            ),

            const SizedBox(height: 16),

            // Password
            TextField(
              obscureText: hidePass,

              decoration: InputDecoration(
                labelText: "New Password",

                prefixIcon: const Icon(Icons.lock),

                suffixIcon: IconButton(
                  icon: Icon(
                    hidePass ? Icons.visibility_off : Icons.visibility,
                  ),

                  onPressed: () => setState(() => hidePass = !hidePass),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Save button
            ElevatedButton(
              onPressed: () => Navigator.pop(context),

              style: ElevatedButton.styleFrom(
                fixedSize: Size(500, 55), //width, height
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              

              child: Text("Save Changes",
              style: TextStyle(color: Colors.white))
              ,
              
            ),
          ],
        ),
      ),
    );
  }
}
 
 













