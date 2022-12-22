import 'dart:io';
import 'package:concord/screens/login_screen.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_cropper/image_cropper.dart';

class EditSettingsProfile extends StatefulWidget {
  const EditSettingsProfile({Key? key}) : super(key: key);

  @override
  State<EditSettingsProfile> createState() => _EditSettingsProfileState();
}

class _EditSettingsProfileState extends State<EditSettingsProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: IconButton(
                  alignment: Alignment.centerLeft,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 35, top: 30),
              child: Text(
                'Edit Profile',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                width: 130,
                height: 160,

                child: Column(
                  children: [
                    Spacer(),
                    image != null
                        ? ClipOval(
                          child: Image.file(
                      image!,
                      width: 130,
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                        )
                        : Icon(Icons.account_circle,size: 130,)
                  ],
                ),
                 /*decoration: BoxDecoration(
                  border: Border.all(width: 2.5, color: Colors.grey.shade800),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.4))
                  ],
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://i.pinimg.com/236x/71/e9/84/71e984032aadebf1042732bc9bf2a444.jpg')),
                ),*/
              ),
            ),
            // EDIT AND CHANGE BUTTON
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 35,
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        primary: Colors.grey.shade800,
                      ),
                      onPressed: () => pickImage(ImageSource.gallery),
                      child: const Text(
                        'Change photo',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  /*SizedBox(
                    height: 35,
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        primary: Colors.grey.shade800,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Edit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),*/
                ],
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            buildTextField('Username'),
            buildTextField('Location'),
            buildTextField('Description'),

            Padding(
              padding: const EdgeInsets.only(left: 130,right: 130),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  primary: Colors.grey.shade800,
                ),
                onPressed:() {},
                child: const Text(
                  'Save',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
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

  Widget buildTextField(String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35, left: 12),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(bottom: 3),
            labelText: value,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintStyle:
            const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
      ),
    );
  }

  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('failed to pick image : $e');
    }
  }
}
