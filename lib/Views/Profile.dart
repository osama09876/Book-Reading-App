// import 'package:book_reading_app/Custom%20Theme/ThemeManager.dart';
import 'package:book_reading_app/UI%20Helper/CustomColors.dart';
// import 'package:book_reading_app/Views/HomeScreen.dart';
import 'package:flutter/material.dart';

import 'MainScreen.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 55, 89, 99),
      appBar: AppBar(
        backgroundColor: darkcolor,
        title: Text(
          'Profile',
          style: TextStyle(color: wrcolor),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MainScreen()));
          },
          icon: Icon(Icons.arrow_back),
          color: wrcolor,
        ),
        // actions: [
        //   Switch(
        //     value: thememanager.themeMode == ThemeMode.dark,
        //     onChanged: (newvalue) {
        //       thememanager.toggleTheme(newvalue);
        //     },
        //   )
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            // Image(
            //   image: AssetImage(
            //     'assets/images/person2.jpg',
            //   ),
            //   // fit: BoxFit.cover,
            // ),
            Container(
              height: 150,
              width: 150,
              child: Image(
                image: AssetImage('assets/images/person2.png'),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            CustomListTile(
                itemName: 'Profile',
                trailingIcon: Icons.arrow_circle_right_outlined,
                icons: Icons.person_2_outlined,
                ontap: () {}),
            SizedBox(
              height: 15,
            ),
            CustomListTile(
                itemName: 'Help & Support',
                trailingIcon: Icons.arrow_circle_right_outlined,
                icons: Icons.question_mark_rounded,
                ontap: () {}),
            SizedBox(
              height: 15,
            ),
            CustomListTile(
                itemName: 'Settings',
                trailingIcon: Icons.arrow_circle_right_outlined,
                icons: Icons.settings,
                ontap: () {}),
            SizedBox(
              height: 15,
            ),
            CustomListTile(
                itemName: 'Invite Firends',
                trailingIcon: Icons.arrow_circle_right_outlined,
                icons: Icons.person_add_alt_1_outlined,
                ontap: () {}),
            SizedBox(
              height: 15,
            ),
            // CustomListTile(
            //     itemName: 'Logout',
            //     trailingIcon: ,
            //     icons:
            //     ontap: () {
            //       print('logout');
            //       Navigator.pop(context);
            //     }),
            Container(
              decoration: BoxDecoration(
                color: darkcolor,
                borderRadius: BorderRadius.circular(15),
              ),
              width: 360,
              child: ListTile(
                trailing: Icon(Icons.arrow_circle_right_outlined),
                iconColor: wrcolor,
                leading: Icon(Icons.logout_outlined),
                title: Text(
                  'Logout',
                  style: TextStyle(color: wrcolor),
                ),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  CustomListTile(
      {super.key,
      required this.itemName,
      required this.icons,
      required this.trailingIcon,
      required this.ontap});

  final String itemName;
  final IconData icons;
  final IconData trailingIcon;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: darkcolor,
        borderRadius: BorderRadius.circular(15),
      ),
      width: 360,
      child: ListTile(
        leading: Icon(
          icons,
          color: Colors.white,
        ),
        title: Text(
          itemName,
          style: TextStyle(color: Colors.white),
        ),
        trailing: Icon(
          trailingIcon,
          color: Colors.white,
        ),
        onTap: () => ontap,
      ),
    );
  }
}
