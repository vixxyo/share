
import 'package:concord/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:concord/utils/theme.dart';
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
            padding: const EdgeInsets.only(top:5),
            child: Container(
              alignment: const Alignment(0.9,0),
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
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15,left: 15,right: 15,top: 5),
                child: Container(
                  height: 250,
                  width: double.infinity,
                  color: Colors.white54,
                ),
              )
            ],
          ),
          // FOR PROFILE DESCRIPTION.
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                             ;
                            },
                            child: const CircleAvatar(
                              backgroundColor: Colors.grey,
                              backgroundImage: NetworkImage(
                                'https://i.pinimg.com/236x/71/e9/84/71e984032aadebf1042732bc9bf2a444.jpg',
                              ),
                              radius: 40,
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text(
                                    'NewUser',
                                    style: TextStyle(
                                        fontSize: 24, fontFamily: 'Josefin'),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
}
