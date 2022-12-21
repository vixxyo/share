import 'package:concord/screens/explore_screen.dart';
import 'package:flutter/material.dart';
import 'package:concord/utils/theme.dart';
import 'profile_screen.dart';
import 'nav_bar.dart';
import 'profile_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.zero,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 20),
          child: IconButton(
              alignment: Alignment.centerLeft,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        Column(
          children: [
            Container(
              height: 300,
              alignment: Alignment.center,
              child: const Text(
                'Settings',
                style: TextStyle(fontSize: 52, fontFamily: 'Josefin'),
              ),
            ),
            // BURGER MENU NAME CARD.
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 80,
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(
                          'https://i.pinimg.com/236x/71/e9/84/71e984032aadebf1042732bc9bf2a444.jpg',
                        ),
                        radius: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        'NewUser',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),

            //BURGER MENU MAIN.
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade900, width: 2),
                    borderRadius: const BorderRadius.all( Radius.circular(20))),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.article),
                      title: const Text(
                        'General',
                        textAlign: TextAlign.left,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.animation),
                      title: const Text(
                        'Manage Cords',
                        textAlign: TextAlign.left,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.language),
                      title: const Text(
                        'Language',
                        textAlign: TextAlign.left,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.bookmark),
                      title: const Text(
                        'Saved',
                        textAlign: TextAlign.left,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.shield),
                      title: const Text(
                        'Privacy & Security',
                        textAlign: TextAlign.left,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.manage_accounts),
                      title: const Text(
                        'Account',
                        textAlign: TextAlign.left,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.notifications_active),
                      title: const Text(
                        'Notification',
                        textAlign: TextAlign.left,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.data_usage),
                      title: const Text(
                        'Data and storage',
                        textAlign: TextAlign.left,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.help),
                      title: const Text(
                        'Help',
                        textAlign: TextAlign.left,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.pages),
                      title: const Text(
                        'About',
                        textAlign: TextAlign.left,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.more),
                      title: const Text(
                        'More',
                        textAlign: TextAlign.left,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.logout),
                      title: const Text(
                        'Log Out',
                        textAlign: TextAlign.left,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: const Text(
                        'Log Out',
                        textAlign: TextAlign.left,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
// TODO: implement build
