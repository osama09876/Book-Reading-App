// import 'package:book_reading_app/Custom%20Theme/ThemeManager.dart';
import 'dart:io';

import 'package:book_reading_app/UI%20Helper/CustomColors.dart';
// import 'package:book_reading_app/Views/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:image_cropper/image_cropper.dar/t';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:image_picker/image_picker.dart';

import 'MainScreen.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? imageFile;

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
        actions: [
          IconButton(
            // icon: Icon(Get.isDarkMode
            //     ? Icons.light_mode_outlined
            //     : Icons.dark_mode_outlined),
            icon: Icon(
              Get.isDarkMode ? Icons.light_mode : Icons.dark_mode,
              color: wrcolor,
            ),
            onPressed: () {
              Get.changeTheme(
                Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              imageFile == null
                  ? Image.asset(
                      'assets/images/person2.png',
                      width: 150,
                      height: 150,
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.file(
                        imageFile!,
                        width: 150,
                        height: 150,
                        fit: BoxFit.fill,
                      ),
                    ),
              TextButton(
                onPressed: () async {
                  Map<Permission, PermissionStatus> statuses = await [
                    Permission.storage,
                    Permission.camera,
                  ].request();
                  if (statuses[Permission.storage]!.isGranted &&
                      statuses[Permission.camera]!.isGranted) {
                    showImagePicker(context);
                  } else {
                    print('no permission provided');
                  }
                  // showImagePicker(context);
                },
                child: Text(
                  'Add profile',
                  style: TextStyle(
                    color: Get.isDarkMode ? Colors.white : darkcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
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
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(
                    context,
                    '/login',
                  );
                },
                child: Container(
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
                      Navigator.pushReplacementNamed(
                        context,
                        '/login',
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final picker = ImagePicker();

  void showImagePicker(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Card(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 5.2,
                margin: const EdgeInsets.only(top: 8.0),
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: InkWell(
                      child: Column(
                        children: const [
                          Icon(
                            Icons.image,
                            size: 60.0,
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            "Gallery",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          )
                        ],
                      ),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.pop(context);
                      },
                    )),
                    Expanded(
                        child: InkWell(
                      child: SizedBox(
                        child: Column(
                          children: const [
                            Icon(
                              Icons.camera_alt,
                              size: 60.0,
                            ),
                            SizedBox(height: 12.0),
                            Text(
                              "Camera",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        _imgFromCamera();
                        Navigator.pop(context);
                      },
                    ))
                  ],
                )),
          );
        });
  }

  _imgFromGallery() async {
    final image =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 50);
    //     .then((value) {
    //   if (value != null) {
    //     _cropImage(File(value.path));
    //   }
    // });
    // setState(() {

    // });
    setState(() {
      imageFile = File(image!.path.toString());
    });
  }

  _imgFromCamera() async {
    final image =
        await picker.pickImage(source: ImageSource.camera, imageQuality: 50);
    setState(() {
      imageFile = File(image!.path.toString());
    });
    //     .then((value) {
    //   if (value != null) {
    //     _cropImage(File(value.path));
    //   }
    // });
  }

  // _cropImage(File imgFile) async {
  //   final croppedFile = await ImageCropper().cropImage(
  //       sourcePath: imgFile.path,
  //       aspectRatioPresets: Platform.isAndroid
  //           ? [
  //               CropAspectRatioPreset.square,
  //               CropAspectRatioPreset.ratio3x2,
  //               CropAspectRatioPreset.original,
  //               CropAspectRatioPreset.ratio4x3,
  //               CropAspectRatioPreset.ratio16x9
  //             ]
  //           : [
  //               CropAspectRatioPreset.original,
  //               CropAspectRatioPreset.square,
  //               CropAspectRatioPreset.ratio3x2,
  //               CropAspectRatioPreset.ratio4x3,
  //               CropAspectRatioPreset.ratio5x3,
  //               CropAspectRatioPreset.ratio5x4,
  //               CropAspectRatioPreset.ratio7x5,
  //               CropAspectRatioPreset.ratio16x9
  //             ],
  //       uiSettings: [
  //         AndroidUiSettings(
  //             toolbarTitle: "Image Cropper",
  //             toolbarColor: Colors.deepOrange,
  //             toolbarWidgetColor: Colors.white,
  //             initAspectRatio: CropAspectRatioPreset.original,
  //             lockAspectRatio: false),
  //         IOSUiSettings(
  //           title: "Image Cropper",
  //         )
  //       ]);
  //   if (croppedFile != null) {
  //     imageCache.clear();
  //     setState(() {
  //       imageFile = File(croppedFile.path);
  //     });
  //     // reload();
  //   }
  // }
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
