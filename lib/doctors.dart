import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hadar/chatbot.dart';

import 'device.dart';
import 'doctorinfos.dart';
import 'home.dart';
import 'journal.dart';
import 'notifications.dart';

class Doctors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double canvasWidth = 357;
    final double viewRatio = canvasWidth / 792; // Adjust this value if needed

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 357,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 38,
                top: 105,
                child: SizedBox(
                  width: 176,
                  height: 21,
                  child: Text(
                    'Chercher un docteur',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Poppins',
                      color: const Color(0x70000000),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -9,
                top: 133,
                child: SizedBox(
                  width: 221,
                  height: 43,
                  child: Text(
                    'Médecins',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Poppins',
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 13,
                top: 107,
                child: Image.network(
                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2F2a4a6e6390480f217c670ecf3281eef7.png',
                  width: 23,
                  height: 19,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                left: 309,
                top: 107,
                child: Image.network(
                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2Fa1047ea12eb3fc2e013fc27f95f91c60.png',
                  width: 25,
                  height: 18,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                left: 25,
                top: 201,
                child: Container(
                  width: 144,
                  height: 119,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: const Color(0xFF019874),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x28000000),
                        spreadRadius: 2,
                        offset: Offset(0, 4),
                        blurRadius: 10,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 9,
                top: 329,
                child: Container(
                  width: 180,
                  height: 82,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x28000000),
                        spreadRadius: 2,
                        offset: Offset(0, 4),
                        blurRadius: 10,
                      )
                    ],
                  ),
                ),
              ),


              Positioned(
                left: 0,
                top: 604,
                child: Container(
                  width: 355,
                  height: 91,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x28000000),
                        spreadRadius: 2,
                        offset: Offset(0, 4),
                        blurRadius: 10,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 604,
                child: Container(
                  width: 355,
                  height: 91,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x28000000),
                        spreadRadius: 2,
                        offset: Offset(0, 4),
                        blurRadius: 10,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: -17,
                top: 327,
                child: SizedBox(
                  width: 213,
                  height: 27,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DoctorsInfo(),
                        ),
                      );
                    },
                    child: Text(
                      'Dr. Mosia Gloria',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Poppins',
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                left: -50,
                top: 201,
                child: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FDhCzv8XVh75Ub3k6rcXE%2F168877ebfdcfd9e9c3a31b2613d58ac43efdbf3e?alt=media&token=b04503dc-00a9-4559-a77b-3d6cc0505c9d',
                  width: 249,
                  height: 119,
                  fit: BoxFit.cover,
                ),
              ),


              Positioned(
                left: 204,
                top: 610,
                child: Container(
                  width: 143,
                  height: 79,
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: 1,
                        top: 0,
                        child: Image.network(
                          'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2F80d970d57c019c72703bf96d47d9e40e.png',
                          width: 141,
                          height: 79,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Positioned(
                        left: 41,
                        top: 19,
                        child: Opacity(
                          opacity: 0.1,
                          child: Image.network(
                            'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2F10d3a8f27e3035e6a967d8389acdbf49.png',
                            width: 12,
                            height: 5,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 6,
                        top: 3,
                        child: Image.network(
                          'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2F61b7f4bc534368ba5ab0693d5ffad7d8.png',
                          width: 131,
                          height: 72,
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 613,
                child: SizedBox(
                  width: 184,
                  height: 22,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatBot(),
                        ),
                      );
                    },child:Text(
                    'Assistance en ligne',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Poppins',
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 487,
                child: Container(
                  width: 355,
                  height: 91,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x28000000),
                        spreadRadius: 2,
                        offset: Offset(0, 4),
                        blurRadius: 10,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 216,
                top: 482,
                child: Image.network(
                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2Fd780e3d12d82e1b6e12206dae6101eb1.png',
                  width: 158,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                left: 15,
                top: 496,
                child: SizedBox(
                  width: 184,
                  height: 22,
                  child: Text(
                    'Consulter l’historique des consultations',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Poppins',
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              // Extracted Navbar
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: canvasWidth,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Handle navigation to HomePage
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: buildNavbarItem(

                          iconUrl: 'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FDhCzv8XVh75Ub3k6rcXE%2Feffdef2da41ac066faf287f5abd3097ec49d5e60?alt=media&token=623ac065-47aa-4a12-916b-5e3debd0561c',
                          title: 'Accueil',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Handle navigation to Journal Page

                        },
                        child: buildNavbarItem(

                          iconUrl: 'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FDhCzv8XVh75Ub3k6rcXE%2F3f16f9026e0f93dd65b617e082c70c6329696321?alt=media&token=54d7675f-0541-4be1-9df4-85e0ab5bd8ae',
                          title: 'Journal',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Handle navigation to Notifications Page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Notifications()),
                          );
                        },
                        child: buildNavbarItem(
                          iconUrl:
                          'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FDhCzv8XVh75Ub3k6rcXE%2F4621a2ffbd02508f88be529e93bb1e7424115a10?alt=media&token=f3b86aaa-0a76-4ae4-b955-82bd434caf31',
                          title: 'Notifications',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Handle navigation to Device Page
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Device()),
                          );
                        },
                        child: buildNavbarItem(
                          iconUrl:
                          'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/JG9nPX0jK9XSmvjagLhvnIJwZ1F2%2Fuploads%2Fimages%2F69fc2f50_2717_11ee_8893_97fddfdc0ceb_magnetic_sensor.png?alt=media',
                          title: 'Appareil',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),



    );
  }

  // This is the extracted buildNavbarItem function from the second part
  Widget buildNavbarItem({
    required String iconUrl,
    required String title,
    bool rotateIcon = false,
  }) {
    return Column(
      children: [
        Image.network(
          iconUrl,
          width: 22,
          height: 22,
          fit: BoxFit.contain,
        ),
        SizedBox(height: 4),
        Transform.rotate(
          angle: rotateIcon ? pi / 2 : 0,
          child: Text(
            title,
            style: GoogleFonts.getFont(
              'Inter',
              color: const Color(0xFF999999),
              fontSize: 10,
            ),
          ),
        ),
      ],
    );
  }
}
