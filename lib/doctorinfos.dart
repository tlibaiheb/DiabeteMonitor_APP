import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "dart:math" show pi;
import 'device.dart';
import 'doctors.dart';
import 'home.dart';
import 'journal.dart'; // Import the Doctors page
import 'notifications.dart';

class DoctorsInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 357,
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 357,
                height: 792,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 14,
                      top: 60,
                      child: SizedBox.square(
                        dimension: 24,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Doctors(),
                                    ),
                                  );
                                },
                                child: Image.network(
                                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2F654d756d74ac500f7bff5543a244330f.png',
                                  width: 24,
                                  height: 24,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 17,
                      top: 338,
                      child: SizedBox(
                        width: 271,
                        height: 40,
                        child: Text(
                          'Dr. Mosia Gloria',
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
                      left: -23,
                      top: 34,
                      child: Image.network(
                        //Image of Gly
                        'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FDhCzv8XVh75Ub3k6rcXE%2F168877ebfdcfd9e9c3a31b2613d58ac43efdbf3e?alt=media&token=5d91635d-084e-49c9-b85a-5bb29a81308b',
                        width: 380,
                        height: 296,
                        fit: BoxFit.none,
                        alignment: const Alignment(0.76, -1),
                        scale: 3.789,
                      ),
                    ),
                    Positioned(
                      left: 31,
                      top: 369,
                      child: Text(
                        'Diabetologue',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0x96000000),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 18,
                      top: 427,
                      child: Text(
                        'Patients',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0x96000000),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 138,
                      top: 426,
                      child: Text(
                        'Experience',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0x96000000),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 260,
                      top: 427,
                      child: Text(
                        'Notation',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0x96000000),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 19,
                      top: 458,
                      child: Text(
                        '1.4K',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0xB2000000),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 146,
                      top: 458,
                      child: Text(
                        '5 ans',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0xB2000000),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 273,
                      top: 459,
                      child: Text(
                        '4.0',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: const Color(0xB2000000),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 17,
                      top: 548,
                      child: SizedBox(
                        width: 315,
                        height: 111,
                        child: Text(
                          ' Elle possède une expertise approfondie dans le diagnostic précoce du diabète, la gestion des complications liées à cette maladie chronique',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: const Color(0xA5000000),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      top: 673,
                      child: SizedBox(
                        width: 327,
                        height: 56,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 327,
                                height: 56,
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF199A8E),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 70,
                              top: 15,
                              child: Text(
                                'Prendre un rendez-vous',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  height: 1.5,
                                ),
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
            // Navbar
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            width: 357,
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
    );
  }

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
              'Poppins',
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
