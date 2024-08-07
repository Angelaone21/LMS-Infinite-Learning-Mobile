import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../pages/course/materi_list.dart';
import '../pages/course/tugas_list.dart';

class CourseView extends StatefulWidget {
  const CourseView({super.key});

  @override
  State<CourseView> createState() => _CourseViewState();
}

class _CourseViewState extends State<CourseView> {
  var _tab = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 45,
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 15),
              child: ListView(scrollDirection: Axis.horizontal, children: [
                GestureDetector(
                    onTap: () {
                      if (_tab != 0) {
                        setState(() {
                          _tab = 0;
                        });
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _tab == 0 ? Colors.blue : Colors.white,
                          border: Border.all(color: Colors.blue, width: 1.5)),
                      child: Text(
                        "Materi",
                        style: TextStyle(
                            color: _tab == 0 ? Colors.white : Colors.blue),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      if (_tab != 1) {
                        setState(() {
                          _tab = 1;
                        });
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _tab == 1 ? Colors.blue : Colors.white,
                          border: Border.all(color: Colors.blue, width: 1.5)),
                      child: Text(
                        "Tugas",
                        style: TextStyle(
                            color: _tab == 1 ? Colors.white : Colors.blue),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      if (_tab != 2) {
                        setState(() {
                          _tab = 2;
                        });
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _tab == 2 ? Colors.blue : Colors.white,
                          border: Border.all(color: Colors.blue, width: 1.5)),
                      child: Text(
                        "Meeting",
                        style: TextStyle(
                            color: _tab == 2 ? Colors.white : Colors.blue),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      if (_tab != 3) {
                        setState(() {
                          _tab = 3;
                        });
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.only(right: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _tab == 3 ? Colors.blue : Colors.white,
                          border: Border.all(color: Colors.blue, width: 1.5)),
                      child: Text(
                        "Pengumuman",
                        style: TextStyle(
                            color: _tab == 3 ? Colors.white : Colors.blue),
                      ),
                    )),
              ])),
          _tab == 0
              ? MateriList()
              : _tab == 1
                  ? TugasList()
                  : _tab == 2
                      ? _buildMeetingList()
                      : _buildPengumumanList()
        ],
      ),
    );
  }

  Widget _buildMeetingList() {
    return Expanded(
        child: ListView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Meeting 1",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/link.png',
                          height: 20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8),
                        Text("Link Zoom",
                            style: TextStyle(
                                fontSize: 14,
                                height: 1.4,
                                color: Color.fromARGB(255, 245, 239, 239),
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                        "Jessice Aulia S.Kom (Teori)\nKelas: Web Development Pagi & Merdeka Belajar\nJadwal/Jam: Senin, 09.00-13.00 WIB",
                        style: TextStyle(
                            fontSize: 12,
                            height: 1.4,
                            color: Color.fromARGB(255, 245, 239, 239),
                            fontWeight: FontWeight.normal)),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Meeting 2",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/link.png',
                          height: 20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8),
                        Text("Link Zoom",
                            style: TextStyle(
                                fontSize: 14,
                                height: 1.4,
                                color: Color.fromARGB(255, 245, 239, 239),
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                        "Jessica Aulia S.Kom (Challenge Mentor)\nKelas: Web Development Siang & Merdeka Belajar\nJadwal/Jam: Senin, 14.00-18.00 WIB",
                        style: TextStyle(
                            fontSize: 12,
                            height: 1.4,
                            color: Color.fromARGB(255, 245, 239, 239),
                            fontWeight: FontWeight.normal)),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Meeting 3",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/link.png',
                          height: 20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8),
                        Text("Link Zoom",
                            style: TextStyle(
                                fontSize: 14,
                                height: 1.4,
                                color: Color.fromARGB(255, 245, 239, 239),
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                        "Jessica Aulia (Individual Mentor)\nKelas: Web Development Malam & Merdeka Belajar\nJadwal/Jam: Senin, 19.00-23.00 WIB",
                        style: TextStyle(
                            fontSize: 12,
                            height: 1.4,
                            color: Color.fromARGB(255, 245, 239, 239),
                            fontWeight: FontWeight.normal)),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }

  Widget _buildPengumumanList() {
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
                      child: Text("Pengumuman",
                          style: TextStyle(
                              fontSize: 16,
                              height: 1.4,
                              fontWeight: FontWeight.bold))),
                ],
              )),
              SizedBox(height: 7),
              Container(
                padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/profile6.png', height: 34),
                      SizedBox(width: 10),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Jessica Aulia",
                                  style: TextStyle(
                                      fontSize: 14,
                                      height: 1.4,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.watch_later_outlined,
                                      size: 16, color: Colors.white),
                                  SizedBox(width: 2),
                                  Text("22 Dec 2023",
                                      style: TextStyle(
                                          fontSize: 11,
                                          height: 1.4,
                                          color: Colors.white,
                                          // decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.normal)),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                              "Halo semua, Akhirnya kita sudah sampai di ujung kegiatan kita. Selamat berjumap di kesempatan lainnya. Senang bisa mengenal kalian semua.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal)),
                        ],
                      )),
                    ]),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 28, 104, 158),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset('assets/images/profile6.png', height: 34),
            SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jessica Aulia",
                        style: TextStyle(
                            fontSize: 14,
                            height: 1.4,
                            color: Colors.white,
                            // decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.watch_later_outlined,
                            size: 16, color: Colors.white),
                        SizedBox(width: 2),
                        Text("25 Nov 2023",
                            style: TextStyle(
                                fontSize: 11,
                                height: 1.4,
                                color: Colors.white,
                                // decoration: TextDecoration.underline,
                                fontWeight: FontWeight.normal)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                    "Halo semua nggak kerasa kita udah deket akhir kegiatan Studi Independen, tetep semangat ngerjain proyek dan jaga kesehatan ya. ",
                    style: TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        color: Colors.white,
                        fontWeight: FontWeight.normal)),
              ],
            )),
          ]),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 28, 104, 158),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset('assets/images/profile6.png', height: 34),
            SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jessica Aulia",
                        style: TextStyle(
                            fontSize: 14,
                            height: 1.4,
                            color: Colors.white,
                            // decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.watch_later_outlined,
                            size: 16, color: Colors.white),
                        SizedBox(width: 2),
                        Text("12 Okt 2023",
                            style: TextStyle(
                                fontSize: 11,
                                height: 1.4,
                                color: Colors.white,
                                // decoration: TextDecoration.underline,
                                fontWeight: FontWeight.normal)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                    "Hari ini akan presentasi proyek yang akan menjelaskan progress pengerjaan proyek yang sudah dikerjakan oleh tim",
                    style: TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        color: Colors.white,
                        fontWeight: FontWeight.normal)),
              ],
            )),
          ]),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 28, 104, 158),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset('assets/images/profile7.png', height: 34),
            SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Lauren Allow",
                        style: TextStyle(
                            fontSize: 14,
                            height: 1.4,
                            color: Colors.white,
                            // decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          size: 16,
                          color: Colors.white,
                        ),
                        SizedBox(width: 2),
                        Text("18 Augt 2023",
                            style: TextStyle(
                                fontSize: 11,
                                height: 1.4,
                                color: Colors.white,
                                // decoration: TextDecoration.underline,
                                fontWeight: FontWeight.normal)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                    "Hai Guys, siapa yang udah ga sabar our first class tomorrow??\nSampai jumpa besok ya temen - temen jangan begadang dan jaga stay healthy",
                    style: TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        color: Colors.white,
                        fontWeight: FontWeight.normal)),
              ],
            )),
          ]),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 28, 104, 158),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset('assets/images/profile7.png', height: 34),
            SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Lauren Allow",
                        style: TextStyle(
                            fontSize: 14,
                            height: 1.4,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.watch_later_outlined,
                            size: 16, color: Colors.white),
                        SizedBox(width: 2),
                        Text("14 Agustus 2023",
                            style: TextStyle(
                                fontSize: 11,
                                height: 1.4,
                                color: Colors.white,
                                fontWeight: FontWeight.normal)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                    "Halo teman - teman welcome to Infinite Learning!!\nIni adalah aplikasi yang akan kita pakai selama kegiatan Studi Independen\nNice To Meet You Yaa:)",
                    style: TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        color: Colors.white,
                        fontWeight: FontWeight.normal)),
              ],
            )),
          ]),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 28, 104, 158),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset('assets/images/profile7.png', height: 34),
            SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Lauren Allow",
                        style: TextStyle(
                            fontSize: 14,
                            height: 1.4,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.watch_later_outlined,
                            size: 16, color: Colors.white),
                        SizedBox(width: 2),
                        Text("14 Agustus 2023",
                            style: TextStyle(
                                fontSize: 11,
                                height: 1.4,
                                color: Colors.white,
                                fontWeight: FontWeight.normal)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                    "Hari ini akan presentasi proyek yang akan menjelaskan progress pengerjaan proyek yang sudah dikerjakan oleh tim",
                    style: TextStyle(
                        fontSize: 12,
                        height: 1.4,
                        color: Colors.white,
                        fontWeight: FontWeight.normal)),
              ],
            )),
          ]),
        )
      ],
    ));
  }
}
