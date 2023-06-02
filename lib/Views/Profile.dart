// import 'package:book_reading_app/Custom%20Theme/ThemeManager.dart';
import 'package:book_reading_app/UI%20Helper/CustomColors.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
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
              ),
            ),
            SizedBox(
              height: 50,
            ),
            CustomListTile(
                itemName: 'Profile',
                trailingIcon: Icons.person_2_outlined,
                icons: Icons.arrow_circle_right_outlined,
                ontap: () {}),
            SizedBox(
              height: 15,
            ),
            CustomListTile(
                itemName: 'Help & Support',
                trailingIcon: Icons.question_mark_rounded,
                icons: Icons.arrow_circle_right_outlined,
                ontap: () {}),
            SizedBox(
              height: 15,
            ),
            CustomListTile(
                itemName: 'Settings',
                trailingIcon: Icons.settings,
                icons: Icons.arrow_circle_right_outlined,
                ontap: () {}),
            SizedBox(
              height: 15,
            ),
            CustomListTile(
                itemName: 'Invite Firends',
                trailingIcon: Icons.person_add_alt_1_outlined,
                icons: Icons.arrow_circle_right_outlined,
                ontap: () {}),
            SizedBox(
              height: 15,
            ),
            CustomListTile(
                itemName: 'Logout',
                trailingIcon: Icons.logout_outlined,
                icons: Icons.arrow_circle_right_outlined,
                ontap: () {
                  print('logout');
                  Navigator.pop(context);
                }),
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
        color: themeColor,
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
