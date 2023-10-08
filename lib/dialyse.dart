import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'dart:math' show pi;

import 'device.dart';
import 'home.dart';
import 'journal.dart';
import 'notifications.dart';

class Dialyse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double canvasWidth = 357;
    final double viewRatio = canvasWidth / 792; // Adjust this value if needed
    final List<Feature> features = [
      Feature(
        title: "Drink Water",
        color: Colors.blue,
        data: [0.2, 0.8, 0.4, 0.7, 0.6],
      ),
      Feature(
        title: "Exercise",
        color: Colors.pink,
        data: [1, 0.8, 0.6, 0.7, 0.3],
      ),

    ];
    return Scaffold(
      body: Container(
        width: canvasWidth,
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
                width: canvasWidth,
                height: 792,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Your existing Dialyse widget content
                    Positioned(
                      left: 40,
                      top: 774,
                      child: SizedBox(
                        width: 39,
                        height: 11,
                        child: Text(
                          'Accueil',
                          style: GoogleFonts.getFont(
                            'Inter',
                            color: const Color(0xFF999999),
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 189,
                      top: 774,
                      child: SizedBox(
                        height: 15,
                        child: Text(
                          'Notifications',
                          style: GoogleFonts.getFont(
                            'Inter',
                            color: const Color(0xFF999999),
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 121,
                      top: 774,
                      child: SizedBox(
                        width: 45,
                        height: 15,
                        child: Text(
                          'Journal',
                          style: GoogleFonts.getFont(
                            'Inter',
                            color: const Color(0xFF999999),
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: -18,
                      top: 11,
                      child: Container(
                        width: 375,
                        height: 100,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(),
                      ),
                    ),
                    Positioned(
                      left: 115,
                      top: 70,
                      child: Text(
                        'Analyse Instantanée',
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
                      top: 63,
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
                      top: 71,
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
                                  Navigator.pop(context);
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
                    ),

                   //PLOT HERE THE GRAPH
                Positioned(
                  bottom: 250,
                  left: 0,
                    child:LineGraph(
                      features: features,
                      size: Size(352, 450),
                      labelX: ['Day 1', 'Day 2', 'Day 3', 'Day 4', 'Day 5', 'Day 6'],
                      labelY: ['25%', '45%', '65%', '75%', '85%', '100%'],
                      showDescription: true ,
                      graphColor: Colors.black87,
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
