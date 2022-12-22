import 'package:concord/model/edit_profile.dart';
import 'package:concord/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:concord/utils/theme.dart';
import 'edit_profilesettings.dart';
import 'settings.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

@override
Widget buildLeading(BuildContext context) {
  return IconButton(
    icon: const Icon(Icons.arrow_back),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
}

@override
Widget build(buildContext) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    themeMode: ThemeMode.system,
    theme: MyThemes.lightTheme,
    darkTheme: MyThemes.darkTheme,
    title: 'Concord',
    home: const ProfileScreen(),
  );
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // MAIN PROFILE PAGE CONTAINING INFO ABOUT PROFILE PIC AND USERNAME.
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              alignment: const Alignment(0.9, 0),
              child: Column(
                children: [
                  IconButton(
                      iconSize: 25,
                      icon: const Icon(Icons.settings),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SettingsScreen()));
                      })
                ],
              ),
            ),
          ),
          // USER HOMEPAGE PICTURE.
          Container(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Container(
                  color: Colors.blue,
                  width: 700,
                  height: 350,
                  child: const Center(
                    child: Text('display pictures to describe you'),
                  ),
                ),
              ],
            ),
          ),
          // FOR PROFILE DESCRIPTION.
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const EditProfile()));
                          },
                          child: const CircleAvatar(
                            backgroundColor: Colors.grey,
                            backgroundImage: NetworkImage(
                              'https://i.pinimg.com/236x/71/e9/84/71e984032aadebf1042732bc9bf2a444.jpg',
                            ),
                            radius: 40,
                          ),
                        ),
                        const Expanded(
                          child: Center(
                            child: Text(
                              'NewUser',
                              style: TextStyle(
                                  fontSize: 24, fontFamily: 'Josefin'),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () => PopUpMenu(),
                          icon: const Icon(Icons.edit),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          // PROFILE DESCRIPTION DETAILS.
          Padding(
            padding: const EdgeInsets.all(20),
            child: Expanded(
              flex: 1,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildStatColumn("Following", 10),
                  buildStatColumn("Follower", 46),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column buildStatColumn(String label, int num) {
    return Column(
      children: [
        Container(
          height: 28,
          width: 120,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(25))),
          child: FittedBox(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(3),
          child: Text(
            num.toString(),
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

//BOTTOM POPUP ON TAP EDIT BUTTON
  void PopUpMenu() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            child: buildBottomMenu(context),
            height: 225,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50))),
          );
        });
  }

  Column buildBottomMenu(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.account_circle),
          title: const Text('Edit profile'),
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const EditSettingsProfile())),
        ),
        ListTile(
          leading: const Icon(Icons.photo_library_rounded),
          title: const Text('Edit namecard'),
          onTap: () => Navigator.pop(context),
        ),
        ListTile(
          leading: const Icon(Icons.pages),
          title: const Text('Manage cords'),
          onTap: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
