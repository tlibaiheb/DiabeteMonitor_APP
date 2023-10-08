import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "dart:math" show pi;

import 'home.dart';
import 'journal.dart';
import 'notifications.dart';

class Device extends StatelessWidget {
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
                                left: 5,
                                top: 180,
                                child: Container(
                                  width: 372,
                                  height: 104,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                        'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2F482b1dc49257098de38cb1264014e68b.png',
                                      ),
                                      fit: BoxFit.contain,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0x33000000),
                                        spreadRadius: 0,
                                        offset: Offset(0, 4),
                                        blurRadius: 20,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 246,
                                top: 212,
                                child: SizedBox(
                                  width: 68,
                                  height: 19,
                                  child: Text(
                                    '3 heures',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color: const Color(0xFF454545),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 241,
                                top: 224,
                                child: SizedBox(
                                  width: 72,
                                  height: 18,
                                  child: Text(
                                    'Restantes',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color: const Color(0xFF7F7F7F),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: -21,
                                top: 180,
                                child: Container(
                                  width: 237,
                                  height: 104,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                        'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2Ff5869f2c2e627d549d866aa6cceedd45.png',
                                      ),
                                      fit: BoxFit.contain,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0x33000000),
                                        spreadRadius: 0,
                                        offset: Offset(0, 4),
                                        blurRadius: 20,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 64,
                                top: 216,
                                child: Image.network(
                                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2Fcef4be5ab0d7571ad122b35320352e5d.png',
                                  width: 15,
                                  height: 24,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Positioned(
                                left: 87,
                                top: 210,
                                child: SizedBox(
                                  width: 60,
                                  height: 37,
                                  child: Text(
                                    '58%',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color: Colors.black,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 309,
                                child: Container(
                                  width: 352,
                                  height: 56,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF8F8F8),
                                    borderRadius: BorderRadius.circular(6),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        spreadRadius: 0,
                                        offset: Offset(1, 1),
                                        blurRadius: 15,
                                      )
                                    ],
                                  ),
                                  child: const Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        left: 13,
                                        top: 22,
                                        child: Text(
                                          "Nombre d'unités d'insuline restantes",
                                          style: TextStyle(
                                            color: Color(0xFF242425),
                                            fontSize: 12,
                                            fontFamily: 'Roboto',
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 289,
                                        top: 22,
                                        child: Text(
                                          '6',
                                          style: TextStyle(
                                            color: Color(0xFF232425),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Roboto',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 396,
                                child: Container(
                                  width: 357,
                                  height: 58,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF8F8F8),
                                    borderRadius: BorderRadius.circular(6),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        spreadRadius: 0,
                                        offset: Offset(1, 1),
                                        blurRadius: 15,
                                      )
                                    ],
                                  ),
                                  child: const Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        left: 20,
                                        top: 23,
                                        child: Text(
                                          "Nombre d'heures avant épuisement :",
                                          style: TextStyle(
                                            color: Color(0xFF242425),
                                            fontSize: 12,
                                            fontFamily: 'Roboto',
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 290,
                                        top: 26,
                                        child: Text(
                                          '28h',
                                          style: TextStyle(
                                            color: Color(0xFF232425),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Roboto',
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 7,
                                top: 491,
                                child: Container(
                                  width: 342,
                                  height: 259,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF8F8F8),
                                    borderRadius: BorderRadius.circular(6),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        spreadRadius: 0,
                                        offset: Offset(1, 1),
                                        blurRadius: 15,
                                      )
                                    ],
                                  ),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      const Positioned(
                                        left: 17,
                                        top: 18,
                                        child: Text(
                                          'Type d’erreur',
                                          style: TextStyle(
                                            color: Color(0xFF242425),
                                            fontSize: 12,
                                            fontFamily: 'Roboto',
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 232,
                                        top: 59,
                                        child: Text(
                                          'Date:',
                                          style: TextStyle(
                                            color: Color(0xFF8A8A8A),
                                            fontSize: 11,
                                            fontFamily: 'Roboto',
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 264,
                                        top: 58,
                                        child: Text(
                                          '5-12-2023',
                                          style: TextStyle(
                                            color: Color(0xFF232425),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Roboto',
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 232,
                                        top: 100,
                                        child: Text(
                                          'Date:',
                                          style: TextStyle(
                                            color: Color(0xFF8A8A8A),
                                            fontSize: 11,
                                            fontFamily: 'Roboto',
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 264,
                                        top: 99,
                                        child: Text(
                                          '7-12-2023',
                                          style: TextStyle(
                                            color: Color(0xFF232425),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Roboto',
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 232,
                                        top: 166,
                                        child: Text(
                                          'Date:',
                                          style: TextStyle(
                                            color: Color(0xFF8A8A8A),
                                            fontSize: 11,
                                            fontFamily: 'Roboto',
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 264,
                                        top: 165,
                                        child: Text(
                                          '27-12-2023',
                                          style: TextStyle(
                                            color: Color(0xFF232425),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Roboto',
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 232,
                                        top: 133,
                                        child: Text(
                                          'Date:',
                                          style: TextStyle(
                                            color: Color(0xFF8A8A8A),
                                            fontSize: 11,
                                            fontFamily: 'Roboto',
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 264,
                                        top: 132,
                                        child: Text(
                                          '9-12-2023',
                                          style: TextStyle(
                                            color: Color(0xFF232425),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Roboto',
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: -80,
                                        top: -140,
                                        child: Container(
                                          width: 502,
                                          height: 540,
                                          clipBehavior: Clip.hardEdge,
                                          decoration: const BoxDecoration(),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 38,
                                        top: 63,
                                        child: SizedBox(
                                          width: 141,
                                          height: 21,
                                          child: Text(
                                            'Appareil sans insuline',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontFamily: 'Roboto',
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 41,
                                        top: 97,
                                        child: SizedBox(
                                          width: 89,
                                          height: 13,
                                          child: Text(
                                            'Epuisement',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontFamily: 'Roboto',
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 41,
                                        top: 128,
                                        child: SizedBox(
                                          width: 115,
                                          height: 15,
                                          child: Text(
                                            'Erreur critique',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontFamily: 'Roboto',
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 41,
                                        top: 165,
                                        child: SizedBox(
                                          width: 99,
                                          height: 34,
                                          child: Text(
                                            'Erreur appareil',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontFamily: 'Roboto',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 6,
                                        top: 56,
                                        child: SizedBox.square(
                                          dimension: 24,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              Positioned(
                                                left: 6,
                                                top: 6,
                                                child: Image.network(
                                                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2Fb72cf87949aab4f8f133a92fb5d627f0.png',
                                                  width: 12,
                                                  height: 12,
                                                  fit: BoxFit.contain,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 6,
                                        top: 158,
                                        child: SizedBox.square(
                                          dimension: 24,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              Positioned(
                                                left: 6,
                                                top: 6,
                                                child: Image.network(
                                                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2Fb72cf87949aab4f8f133a92fb5d627f0.png',
                                                  width: 12,
                                                  height: 12,
                                                  fit: BoxFit.contain,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 6,
                                        top: 89,
                                        child: SizedBox.square(
                                          dimension: 24,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              Positioned(
                                                left: 6,
                                                top: 6,
                                                child: Image.network(
                                                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2Fb72cf87949aab4f8f133a92fb5d627f0.png',
                                                  width: 12,
                                                  height: 12,
                                                  fit: BoxFit.contain,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 6,
                                        top: 122,
                                        child: SizedBox.square(
                                          dimension: 24,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              Positioned(
                                                left: 6,
                                                top: 6,
                                                child: Image.network(
                                                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2Fb72cf87949aab4f8f133a92fb5d627f0.png',
                                                  width: 12,
                                                  height: 12,
                                                  fit: BoxFit.contain,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),

                              Positioned(
                                left: -18,
                                top: 5,
                                child: Container(
                                  width: 375,
                                  height: 100,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: const BoxDecoration(),
                                ),
                              ),
                              Positioned(
                                left: 110,
                                top: 64,
                                child: Text(
                                  'Etat de l’appareil',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: const Color(0xFF101522),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    height: 1.4,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 6,
                                top: 57,
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 14,
                                top: 65,
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
                                                builder: (context) => HomePage(),
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
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
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
                        iconUrl:
                        'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FDhCzv8XVh75Ub3k6rcXE%2F498c46003c9b34245f7eae6849d6d038b94cd575?alt=media&token=89099951-5ef7-45fe-b8f9-4944f2e02dfc',
                        title: 'Accueil',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle navigation to Journal Page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Journal()),
                        );
                      },
                      child: buildNavbarItem(
                        iconUrl:
                        'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FDhCzv8XVh75Ub3k6rcXE%2F9fa0b2763a613dcfd8dd0b4212d11eb9d8e94c62?alt=media&token=d3ee03bc-5355-4ccc-8f5c-fd57f5aeeafb',
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
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Image.network(
            iconUrl,
            width: 22,
            height: 22,
            fit: BoxFit.contain,
            color: rotateIcon ? Colors.blue : Colors.black, // Add color based on rotation
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
                color: rotateIcon ? Colors.blue : Colors.black, // Add color based on rotation
              ),
            ),
          ),
        ],
      ),
    );
  }
}
