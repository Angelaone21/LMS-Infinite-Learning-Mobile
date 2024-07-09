import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MateriList extends StatefulWidget {
  const MateriList({Key? key}) : super(key: key);

  @override
  _MateriListState createState() => _MateriListState();
}

class _MateriListState extends State<MateriList> {
  var _clickedDetails = false;

 Widget _buildMateriDetail(String title, String description) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10), //mengatur ikon panah
          Row(
            children: [
              IconButton(
                color: Colors.black,
                onPressed: () {
                  setState(() {
                    _clickedDetails = false;
                  });
                },
                icon: Icon(Icons.arrow_back),
              ),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          SizedBox(height: 20), //mengatur gambar pada deatil course mentee
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 28, 104, 158),
              borderRadius: BorderRadius.circular(15),
            ),
              child: ClipRRect(
              borderRadius: BorderRadius.circular(15), // Sama dengan borderRadius di atas
              child: Image.asset(
                'assets/images/play.jpg',
                height: 80,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          
          Divider(),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 254, 254),
              borderRadius: BorderRadius.circular(10),
            ),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Penjelasan ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          Divider(), //mengatu ukuran kolom pdf deatil course mentee
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 53, 120, 168),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 28, 104, 158),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pengenalan Dasar Web.pdf",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.copy,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.download,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: _clickedDetails
        ? _buildMateriDetail(
          "Pengenalan Dasar Web", 
          "Pengenalan dasar web adalah pemahaman awal tentang bagaimana internet dan web berfungsi"
          "termasuk konsep server dan klien, protokol HTTP/HTTP, DNS, serta komponen utama haalaman web"
          "seperti HTML, CSS, dan JavaScript")
        : ListView(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _clickedDetails = true;
            });
          },
        child: Container(
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
                  color: Color.fromARGB(255, 28, 104, 158),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Open_Book.png',
                        height: 30,
                        color: Colors.white
                      ),
                      SizedBox(height: 20),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pengenalan Dasar Web",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Pengenalan Dasar Web adalah pemahaman awal tentang bagaimana internet dan web berfungsi, termasuk konsep server dan klien, protokol HTTP/HTTPS, DNS, serta komponen utama halaman web seperti HTML, CSS, dan JavaScript. ",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal)),
                        ],
                      ))
                    ]),
              )
            ]),
          ),
        ),
        SizedBox(height: 20),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pertemuan 2",
                  style: TextStyle(
                      fontSize: 16, height: 1.4, fontWeight: FontWeight.bold)
                      ),
              
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/Open_Book.png',
                            color: Colors.white,
                            height: 30,
                          ),
                          SizedBox(width: 8),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("HTML (HyperText Markup Language)",
                                  style: TextStyle(
                                      fontSize: 14,
                                      height: 1.4,
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 10),
                              Text(
                                  "HTML adalah bahasa standar yang digunakan untuk membuat dan menyusun halaman web. HTML menggunakan elemen-elemen atau tag untuk mendefinisikan berbagai bagian dari sebuah halaman web, seperti judul, paragraf, tautan, gambar, dan banyak lagi. Setiap elemen HTML ditulis dalam bentuk tag yang diapit oleh tanda kurung sudut, seperti <html>, <head>, <body>, dan lain-lain. ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      height: 1.4,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ))
                        ]),
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
              Text("Pertemuan 3",
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
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Open_Book.png',
                        height: 30,
                        color: Colors.white
                      ),
                      SizedBox(width: 8),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("CSS (Cascading Style Sheets)",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "CSS (Cascading Style Sheets) adalah bahasa desain yang digunakan untuk mengontrol tampilan dan tata letak halaman web. CSS memungkinkan pengembang untuk mengatur gaya elemen HTML, seperti warna, font, margin, padding, dan posisi.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  color: Colors.white,
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
              Text("Pertemuan 4",
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/Open_Book.png',
                            height: 30,
                            color: Colors.white
                          ),
                          SizedBox(width: 8),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("JavaScript",
                                  style: TextStyle(
                                      fontSize: 14,
                                      height: 1.4,
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 10),
                              Text(
                                  "JavaScript adalah bahasa pemrograman yang digunakan untuk membuat halaman web menjadi interaktif dan dinamis. Ini memungkinkan pengembang untuk mengimplementasikan fitur-fitur seperti animasi, pengolahan data di sisi klien, dan manipulasi elemen HTML secara real-time, sehingga meningkatkan pengalaman pengguna secara keseluruhan.",
                                  style: TextStyle(
                                      fontSize: 12,
                                      height: 1.4,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ))
                        ]),
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
              Text("Pertemuan 5",
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
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Open_Book.png',
                        height: 30,
                        color: Colors.white
                      ),
                      SizedBox(width: 8),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Version Control with Git",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Version Control with Git adalah sistem pengelolaan versi yang digunakan untuk melacak perubahan dalam kode sumber selama pengembangan perangkat lunak.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  color: Colors.white,
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
              Text("Pertemuan 6",
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
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Open_Book.png',
                        color: Colors.white,
                        height: 30,
                      ),
                      SizedBox(width: 8),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Responsive Web Design",
                              style: TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                              "Responsive Web Design adalah pendekatan dalam desain web yang memastikan tampilan dan fungsi situs web optimal pada berbagai perangkat dan ukuran layar.",
                              style: TextStyle(
                                  fontSize: 12,
                                  height: 1.4,
                                  color: Colors.white,
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
              Text("Pertemuan 7",
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/Open_Book.png',
                            height: 30,
                            color: Colors.white
                          ),
                          SizedBox(width: 8),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Latihan dan Proyek Kecil",
                                  style: TextStyle(
                                      fontSize: 14,
                                      height: 1.4,
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 10),
                              Text(
                                  "Latihan dan Proyek Kecil adalah kegiatan praktis yang dirancang untuk membantu peserta mengaplikasikan konsep dan keterampilan yang telah dipelajari.",
                                  style: TextStyle(
                                      fontSize: 12,
                                      height: 1.4,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ))
                        ]),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
