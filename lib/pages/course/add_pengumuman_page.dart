import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_learning/nav/course_view.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:quill_html_editor/quill_html_editor.dart';

class AddPengumumanPage extends StatefulWidget {
  final String title;

  AddPengumumanPage(this.title);

  @override
  State<AddPengumumanPage> createState() => _AddPengumumanPageState();
}

class _AddPengumumanPageState extends State<AddPengumumanPage> {
  var _tab = 0;

  ///[controller] create a QuillEditorController to access the editor methods
  late QuillEditorController controller;

  ///[customToolBarList] pass the custom toolbarList to show only selected styles in the editor

  final customToolBarList = [
    ToolBarStyle.bold,
    ToolBarStyle.italic,
    ToolBarStyle.align,
    ToolBarStyle.color,
    ToolBarStyle.background,
    ToolBarStyle.listBullet,
    ToolBarStyle.listOrdered,
    ToolBarStyle.clean,
    ToolBarStyle.addTable,
    ToolBarStyle.editTable,
  ];

  final _toolbarColor = Colors.white;
  final _backgroundColor = Colors.white;
  final _toolbarIconColor = Colors.black87;
  final _editorTextStyle = const TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontFamily: 'Roboto');
  final _hintTextStyle = const TextStyle(
      fontSize: 18, color: Colors.black38, fontWeight: FontWeight.normal);

  bool _hasFocus = false;

  @override
  void initState() {
    controller = QuillEditorController();
    controller.onTextChanged((text) {
      debugPrint('listening to $text');
    });
    // controller.onEditorLoaded(() {
    //   debugPrint('Editor Loaded :)');
    // });
    super.initState();
  }

  @override
  void dispose() {
    /// please do not forget to dispose the controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0), // here the desired height
            child: SafeArea(
              child: Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  // alignment: Alignment.center,
                  height: 80,
                  // color: Colors.red,
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.close))),
            )),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    widget.title == "Tambah"
                        ? "Form ${widget.title} Pengumuman"
                        : "Edit Pengumuman",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              SizedBox(height: 20),
              Expanded(
                  child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 15),
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: 15, bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 250,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blue[200]!, width: 2),
                                borderRadius: BorderRadius.circular(10)),
                            // height: 100,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: ToolBar(
                                  toolBarColor: _toolbarColor,
                                  padding: const EdgeInsets.all(5),
                                  iconSize: 18,
                                  alignment: WrapAlignment.spaceBetween,
                                  iconColor: _toolbarIconColor,
                                  activeIconColor: Colors.greenAccent.shade400,
                                  controller: controller,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  // customButtons: [
                                  //   Container(
                                  //     width: 25,
                                  //     height: 25,
                                  //     decoration: BoxDecoration(
                                  //         color: _hasFocus ? Colors.green : Colors.grey,
                                  //         borderRadius: BorderRadius.circular(15)),
                                  //   ),
                                  //   InkWell(
                                  //       // onTap: () => unFocusEditor(),
                                  //       child: const Icon(
                                  //     Icons.favorite,
                                  //     color: Colors.black,
                                  //   )),
                                  //   InkWell(
                                  //       onTap: () async {
                                  //         var selectedText =
                                  //             await controller.getSelectedText();
                                  //         debugPrint('selectedText $selectedText');
                                  //         var selectedHtmlText =
                                  //             await controller.getSelectedHtmlText();
                                  //         debugPrint(
                                  //             'selectedHtmlText $selectedHtmlText');
                                  //       },
                                  //       child: const Icon(
                                  //         Icons.add_circle,
                                  //         color: Colors.black,
                                  //       )),
                                  // ],
                                )),
                          ),
                          SizedBox(height: 40),
                          Container(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                        top: 15,
                                        bottom: 15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                        begin: Alignment.centerRight,
                                        end: Alignment.centerLeft,
                                        colors: <Color>[
                                          Color(0xff002fff),
                                          Color(0xff00f4ff),
                                        ],
                                      ),
                                    ),
                                    child: Text("Batal",
                                        style: TextStyle(
                                            fontSize: 16,
                                            height: 1.4,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                        top: 15,
                                        bottom: 15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                        begin: Alignment.centerRight,
                                        end: Alignment.centerLeft,
                                        colors: <Color>[
                                          Color(0xff002fff),
                                          Color(0xff00f4ff),
                                        ],
                                      ),
                                    ),
                                    child: Text("Simpan",
                                        style: TextStyle(
                                            fontSize: 16,
                                            height: 1.4,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ]),
                          ),
                          SizedBox(height: 10),
                        ]),
                  )
                ],
              ))
            ],
          ),
        ));
  }

  Widget _buildMateriList() {
    return Expanded(
        child: ListView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pertemuan 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Open_Book.png',
                        height: 30,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pemahaman Dasar UI/UX Design",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Lorem ipsum dolor siamet, lorem ipsum dolor siamet, lorem ipsum dolor siamet ,lorem ipsum dolor siamet, lorem ipsum dolor siamet",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  fontWeight: FontWeight.normal)),
                        ],
                      ))
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pertemuan 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Open_Book.png',
                        height: 30,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pemahaman Dasar UI/UX Design",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Lorem ipsum dolor siamet, lorem ipsum dolor siamet, lorem ipsum dolor siamet ,lorem ipsum dolor siamet, lorem ipsum dolor siamet",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  fontWeight: FontWeight.normal)),
                        ],
                      ))
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pertemuan 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Open_Book.png',
                        height: 30,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pemahaman Dasar UI/UX Design",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Lorem ipsum dolor siamet, lorem ipsum dolor siamet, lorem ipsum dolor siamet ,lorem ipsum dolor siamet, lorem ipsum dolor siamet",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  fontWeight: FontWeight.normal)),
                        ],
                      ))
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pertemuan 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Open_Book.png',
                        height: 30,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pemahaman Dasar UI/UX Design",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Lorem ipsum dolor siamet, lorem ipsum dolor siamet, lorem ipsum dolor siamet ,lorem ipsum dolor siamet, lorem ipsum dolor siamet",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  fontWeight: FontWeight.normal)),
                        ],
                      ))
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pertemuan 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Open_Book.png',
                        height: 30,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pemahaman Dasar UI/UX Design",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Lorem ipsum dolor siamet, lorem ipsum dolor siamet, lorem ipsum dolor siamet ,lorem ipsum dolor siamet, lorem ipsum dolor siamet",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  fontWeight: FontWeight.normal)),
                        ],
                      ))
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pertemuan 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Open_Book.png',
                        height: 30,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pemahaman Dasar UI/UX Design",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Lorem ipsum dolor siamet, lorem ipsum dolor siamet, lorem ipsum dolor siamet ,lorem ipsum dolor siamet, lorem ipsum dolor siamet",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  fontWeight: FontWeight.normal)),
                        ],
                      ))
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pertemuan 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Open_Book.png',
                        height: 30,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pemahaman Dasar UI/UX Design",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Lorem ipsum dolor siamet, lorem ipsum dolor siamet, lorem ipsum dolor siamet ,lorem ipsum dolor siamet, lorem ipsum dolor siamet",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  fontWeight: FontWeight.normal)),
                        ],
                      ))
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pertemuan 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Open_Book.png',
                        height: 30,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pemahaman Dasar UI/UX Design",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Lorem ipsum dolor siamet, lorem ipsum dolor siamet, lorem ipsum dolor siamet ,lorem ipsum dolor siamet, lorem ipsum dolor siamet",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  fontWeight: FontWeight.normal)),
                        ],
                      ))
                    ]),
              )
            ],
          ),
        ),
      ],
    ));
  }

  Widget _buildTugasList() {
    return Expanded(
        child: ListView(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Tugas 1",
                          style: TextStyle(
                              fontSize: 16,
                              height: 1.4,
                              fontWeight: FontWeight.bold))),
                  Icon(
                    Icons.add_circle_outline,
                    size: 24,
                  )
                ],
              )),
              SizedBox(height: 7),
              Container(
                padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image.asset(
                      //   'assets/images/Open_Book.png',
                      //   height: 30,
                      // ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pengenalan Dasar HTML",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Setelah belajar HTML dasar diatas silahkan kerjakan tugas berikut, gunakan modul tersebut dan lakukan eksplorasi lebih lanjut.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  fontWeight: FontWeight.normal)),
                        ],
                      )),
                      SizedBox(width: 8),
                      Icon(Icons.more_vert)
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Tugas 1",
                          style: TextStyle(
                              fontSize: 16,
                              height: 1.4,
                              fontWeight: FontWeight.bold))),
                  Icon(
                    Icons.add_circle_outline,
                    size: 24,
                  )
                ],
              )),
              SizedBox(height: 7),
              Container(
                padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image.asset(
                      //   'assets/images/Open_Book.png',
                      //   height: 30,
                      // ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pengenalan Dasar HTML",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Setelah belajar HTML dasar diatas silahkan kerjakan tugas berikut, gunakan modul tersebut dan lakukan eksplorasi lebih lanjut.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  fontWeight: FontWeight.normal)),
                        ],
                      )),
                      SizedBox(width: 8),
                      Icon(Icons.more_vert)
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Tugas 1",
                          style: TextStyle(
                              fontSize: 16,
                              height: 1.4,
                              fontWeight: FontWeight.bold))),
                  Icon(
                    Icons.add_circle_outline,
                    size: 24,
                  )
                ],
              )),
              SizedBox(height: 7),
              Container(
                padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image.asset(
                      //   'assets/images/Open_Book.png',
                      //   height: 30,
                      // ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pengenalan Dasar HTML",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Setelah belajar HTML dasar diatas silahkan kerjakan tugas berikut, gunakan modul tersebut dan lakukan eksplorasi lebih lanjut.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  fontWeight: FontWeight.normal)),
                        ],
                      )),
                      SizedBox(width: 8),
                      Icon(Icons.more_vert)
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Tugas 1",
                          style: TextStyle(
                              fontSize: 16,
                              height: 1.4,
                              fontWeight: FontWeight.bold))),
                  Icon(
                    Icons.add_circle_outline,
                    size: 24,
                  )
                ],
              )),
              SizedBox(height: 7),
              Container(
                padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image.asset(
                      //   'assets/images/Open_Book.png',
                      //   height: 30,
                      // ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pengenalan Dasar HTML",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Setelah belajar HTML dasar diatas silahkan kerjakan tugas berikut, gunakan modul tersebut dan lakukan eksplorasi lebih lanjut.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  fontWeight: FontWeight.normal)),
                        ],
                      )),
                      SizedBox(width: 8),
                      Icon(Icons.more_vert)
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Tugas 1",
                          style: TextStyle(
                              fontSize: 16,
                              height: 1.4,
                              fontWeight: FontWeight.bold))),
                  Icon(
                    Icons.add_circle_outline,
                    size: 24,
                  )
                ],
              )),
              SizedBox(height: 7),
              Container(
                padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image.asset(
                      //   'assets/images/Open_Book.png',
                      //   height: 30,
                      // ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pengenalan Dasar HTML",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Setelah belajar HTML dasar diatas silahkan kerjakan tugas berikut, gunakan modul tersebut dan lakukan eksplorasi lebih lanjut.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  fontWeight: FontWeight.normal)),
                        ],
                      )),
                      SizedBox(width: 8),
                      Icon(Icons.more_vert)
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Tugas 1",
                          style: TextStyle(
                              fontSize: 16,
                              height: 1.4,
                              fontWeight: FontWeight.bold))),
                  Icon(
                    Icons.add_circle_outline,
                    size: 24,
                  )
                ],
              )),
              SizedBox(height: 7),
              Container(
                padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image.asset(
                      //   'assets/images/Open_Book.png',
                      //   height: 30,
                      // ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pengenalan Dasar HTML",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Setelah belajar HTML dasar diatas silahkan kerjakan tugas berikut, gunakan modul tersebut dan lakukan eksplorasi lebih lanjut.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  fontWeight: FontWeight.normal)),
                        ],
                      )),
                      SizedBox(width: 8),
                      Icon(Icons.more_vert)
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Tugas 1",
                          style: TextStyle(
                              fontSize: 16,
                              height: 1.4,
                              fontWeight: FontWeight.bold))),
                  Icon(
                    Icons.add_circle_outline,
                    size: 24,
                  )
                ],
              )),
              SizedBox(height: 7),
              Container(
                padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image.asset(
                      //   'assets/images/Open_Book.png',
                      //   height: 30,
                      // ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pengenalan Dasar HTML",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Setelah belajar HTML dasar diatas silahkan kerjakan tugas berikut, gunakan modul tersebut dan lakukan eksplorasi lebih lanjut.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  fontWeight: FontWeight.normal)),
                        ],
                      )),
                      SizedBox(width: 8),
                      Icon(Icons.more_vert)
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Tugas 1",
                          style: TextStyle(
                              fontSize: 16,
                              height: 1.4,
                              fontWeight: FontWeight.bold))),
                  Icon(
                    Icons.add_circle_outline,
                    size: 24,
                  )
                ],
              )),
              SizedBox(height: 7),
              Container(
                padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image.asset(
                      //   'assets/images/Open_Book.png',
                      //   height: 30,
                      // ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pengenalan Dasar HTML",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.blue,
                                  // decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Setelah belajar HTML dasar diatas silahkan kerjakan tugas berikut, gunakan modul tersebut dan lakukan eksplorasi lebih lanjut.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  fontWeight: FontWeight.normal)),
                        ],
                      )),
                      SizedBox(width: 8),
                      Icon(Icons.more_vert)
                    ]),
              )
            ],
          ),
        ),
      ],
    ));
  }

  ///[getHtmlText] to get the html text from editor
  void getHtmlText() async {
    String? htmlText = await controller.getText();
    debugPrint(htmlText);
  }

  ///[setHtmlText] to set the html text to editor
  void setHtmlText(String text) async {
    await controller.setText(text);
  }

  ///[insertNetworkImage] to set the html text to editor
  void insertNetworkImage(String url) async {
    await controller.embedImage(url);
  }

  ///[insertVideoURL] to set the video url to editor
  ///this method recognises the inserted url and sanitize to make it embeddable url
  ///eg: converts youtube video to embed video, same for vimeo
  void insertVideoURL(String url) async {
    await controller.embedVideo(url);
  }

  /// to set the html text to editor
  /// if index is not set, it will be inserted at the cursor postion
  void insertHtmlText(String text, {int? index}) async {
    await controller.insertText(text, index: index);
  }

  /// to clear the editor
  void clearEditor() => controller.clear();

  /// to enable/disable the editor
  void enableEditor(bool enable) => controller.enableEditor(enable);

  /// method to un focus editor
  void unFocusEditor() => controller.unFocus();
}
