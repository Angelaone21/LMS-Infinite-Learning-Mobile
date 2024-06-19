import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../nav/course_view.dart';



class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final ImagePicker _picker = ImagePicker();
  XFile? _imageFile;
  var _tab = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 60),
              child: Text(
                "Profile",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
          SizedBox(height: 10),
          Expanded(
            child: ListView(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                    child: Text(
                      "Detail Data",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3), //color of shadow
                        spreadRadius: 1, //spread radius
                        blurRadius: 2, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                        //first paramerter of offset is left-right
                        //second parameter is top to down
                      ),
                      //you can set more BoxShadow() here
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/images/mentor.jpg',
                          height: 120, width: 120),
                              SizedBox(height: 5),
                          GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Dialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0)),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 20, horizontal: 0),
                                          height: 250,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset(
                                                  'assets/images/alert.png',
                                                  height: 100),
                                              SizedBox(height: 10),
                                              Text(
                                                "Apakah kamu yakin ingin mengubah Photo Profil?",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 16, height: 1.3),
                                              ),
                                              SizedBox(height: 10),
                                              Container(
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child: Container(
                                                            width: 80,
                                                            alignment: Alignment
                                                                .center,
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    // horizontal: 35,
                                                                    vertical:
                                                                        8),
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                                color: Colors
                                                                    .grey[300]),
                                                            child:
                                                                Text("Tidak"),
                                                          )),
                                                      SizedBox(width: 10),
                                                      GestureDetector(
                                                          onTap: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                            _showPicker(
                                                                context);
                                                          },
                                                          child: Container(
                                                            alignment: Alignment
                                                                .center,
                                                            width: 80,
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    // horizontal: 30,
                                                                    vertical:
                                                                        8),
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                                color: Colors
                                                                    .redAccent),
                                                            child: Text(
                                                              "Ya",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ))
                                                    ]),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: Container(
                                width: 110,
                                alignment: Alignment.center,
                                // padding: EdgeInsets.only(
                                //     left: 10, right: 10, top: 10, bottom: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: LinearGradient(
                                    begin: Alignment.centerRight,
                                    end: Alignment.centerLeft,
                                    colors: <Color>[
                                      Color(0xff002fff),
                                      Color(0xff00f4ff),
                                    ],
                                  ),
                                ),
                                child: Text("Pilih Foto",
                                    style: TextStyle(
                                        fontSize: 12,
                                        height: 1.4,
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal)),
                              )),
                        ],
                      ),
                ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Jessica Aulia",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              Divider(),
                              Text("ID: 20103848",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                      color: Colors.grey)),
                              Divider(),
                              Text("Mentor: Web Development",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                      color: Colors.grey)),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3), 
                          spreadRadius: 1, 
                          blurRadius: 2, 
                          offset: Offset(0, 2), 
                          
                        ),
                      ],
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Theme(
                            data: Theme.of(context)
                                .copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                              title: Text("Mentee Title",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold)),
                              collapsedIconColor: Colors.black,
                              collapsedTextColor: Colors.black,
                              iconColor: Colors.black,
                              textColor: Colors.black,
                              childrenPadding:
                                  EdgeInsets.symmetric(vertical: 10),
                              backgroundColor: Colors.white,
                              collapsedBackgroundColor: Colors.white,
                              children: [
                                Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child:
                                                    Text("1. Annisa Syarifa")),
                                            Expanded(
                                                flex: 3,
                                                child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 3),
                                                    child: Text(
                                                        "annisasyarifa@gmail.com"))),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 2,
                                                    child: Text("1930DG")),
                                                Expanded(
                                                    flex: 3,
                                                    child:
                                                        Text("Web Development")),
                                              ],
                                            ))
                                      ],
                                    )),
                                SizedBox(height: 10),
                                Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child:
                                                    Text("2. Andika Malik")),
                                            Expanded(
                                                flex: 3,
                                                child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 3),
                                                    child: Text(
                                                        "andikamalik@gmail.com"))),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 2,
                                                    child: Text("2030DG")),
                                                Expanded(
                                                    flex: 3,
                                                    child:
                                                        Text("Web Development")),
                                              ],
                                            ))
                                      ],
                                    )),
                                SizedBox(height: 10),
                                Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child:
                                                    Text("3. Salwa Nuraini")),
                                            Expanded(
                                                flex: 3,
                                                child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 3),
                                                    child: Text(
                                                        "salwanuaraini892@gmail.com"))),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 2,
                                                    child: Text("2130DG")),
                                                Expanded(
                                                    flex: 3,
                                                    child:
                                                        Text("Web Development")),
                                              ],
                                            ))
                                      ],
                                    )),
                                SizedBox(height: 10),
                                Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child:
                                                    Text("4. Risky Daulat")),
                                            Expanded(
                                                flex: 3,
                                                child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 3),
                                                    child: Text(
                                                        "riskydaulat@gmail.com"))),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 2,
                                                    child: Text("2230DG")),
                                                Expanded(
                                                    flex: 3,
                                                    child:
                                                        Text("Web Development")),
                                              ],
                                            ))
                                      ],
                                    )),
                                SizedBox(height: 10),
                                Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child:
                                                    Text("5. Muhammad Sandi")),
                                            Expanded(
                                                flex: 3,
                                                child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 3),
                                                    child: Text(
                                                        "muhammadsandi@gmail.com"))),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 2,
                                                    child: Text("2430DG")),
                                                Expanded(
                                                    flex: 3,
                                                    child:
                                                        Text("Web Development")),
                                              ],
                                            ))
                                      ],
                                    )),
                                SizedBox(height: 10),
                                Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child:
                                                    Text("5. Sandika Amalia")),
                                            Expanded(
                                                flex: 3,
                                                child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 3),
                                                    child: Text(
                                                        "sandika amalia@gmail.com"))),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 2,
                                                    child: Text("2530DG")),
                                                Expanded(
                                                    flex: 3,
                                                    child:
                                                        Text("Web Development")),
                                              ],
                                            ))
                                      ],
                                    ))
                              ],
                            )))),
                SizedBox(height: 60),
                GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 0),
                                  height: 250,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset('assets/images/alert.png',
                                          height: 100),
                                      SizedBox(height: 10),
                                      Text(
                                        "Apakah kamu yakin ingin Keluar?",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16, height: 1.3),
                                      ),
                                      SizedBox(height: 10),
                                      Container(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Container(
                                                    width: 80,
                                                    alignment: Alignment.center,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            // horizontal: 35,
                                                            vertical: 8),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color:
                                                            Colors.grey[300]),
                                                    child: Text("Tidak"),
                                                  )),
                                              SizedBox(width: 10),
                                              GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context).pop();
                                                    Navigator.of(context)
                                                        .pushNamedAndRemoveUntil(
                                                            '/login',
                                                            (Route<dynamic>
                                                                    route) =>
                                                                false);
                                                  },
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    width: 80,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            // horizontal: 30,
                                                            vertical: 8),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color:
                                                            Colors.redAccent),
                                                    child: Text(
                                                      "Ya",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ))
                                            ]),
                                      )
                                    ],
                                  ),
                                ));
                          });
                    },
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 20,
                            right: MediaQuery.of(context).size.width / 1.6),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.3), //color of shadow
                              spreadRadius: 1, //spread radius
                              blurRadius: 2, // blur radius
                              offset:
                                  Offset(0, 2), // changes position of shadow
                              //first paramerter of offset is left-right
                              //second parameter is top to down
                            ),
                            //you can set more BoxShadow() here
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/log-out.png',
                              height: 24,
                            ),
                            SizedBox(width: 5),
                            Text("Keluar",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.red))
                          ],
                        ))),
                SizedBox(height: 20),
              ],
            ),
          ),
      );
  }  
  
  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                      child: Text('Change Profile Photo',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.blueAccent))),
                  SizedBox(height: 10),
                  ListTile(
                      leading:
                          Icon(Icons.photo_library, color: Colors.blueAccent),
                      title: new Text('Choose from gallery',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                              color: Colors.black)),
                      onTap: () async {
                        await onImageButtonPressed(ImageSource.gallery);
                      }),
                  ListTile(
                      leading:
                          Icon(Icons.photo_camera, color: Colors.blueAccent),
                      title: new Text('Choose from camera',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                              color: Colors.black)),
                      onTap: () async {
                        await onImageButtonPressed(ImageSource.camera);
                      }),
                  SizedBox(height: 5),
                ],
              ),
            ),
          );
        });
  }

  Future<void> onImageButtonPressed(ImageSource source) async {
    // if (_controller != null) {
    //   await _controller.setVolume(0.0);
    // }
    // if (isVideo) {
    //   final PickedFile file = await _picker.getVideo(
    //       source: source, maxDuration: const Duration(seconds: 10));
    //   await _playVideo(file);
    // } else {
    // await _displayPickImageDialog(context,
    //     (double maxWidth, double maxHeight, int quality) async {
    Navigator.of(context).pop();

    try {
      final pickedFile = await _picker.pickImage(
        source: source,
        // maxWidth: 100,
        // maxHeight: 100,
        imageQuality: 100,
      );
      setState(() {
        _imageFile = pickedFile!;
      });
      //
      // late FormData formData;
      // late dynamic response;
      //
      if (pickedFile != null) {
        // _timer?.cancel();
        // await EasyLoading.show(maskType: EasyLoadingMaskType.custom);

        // formData = FormData.fromMap({
        //   'name': model.user.name,
        //   'email': model.user.email,
        //   'image': await MultipartFile.fromFile(_imageFile.path,
        //       filename: _imageFile.path.split('/').last)
        // });

        // response = await model.editProfile(formData);

        // if (response['data'] != null) {
        //   _timer?.cancel();
        //   await EasyLoading.dismiss();
        // }
      }
    } catch (e) {
      // _timer?.cancel();
      // await EasyLoading.dismiss();
      // setState(() {
      //   _pickImageError = e;
      // });
    }
    // });
  }
}

