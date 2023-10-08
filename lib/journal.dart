import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hadar/device.dart';
import 'package:hadar/home.dart';
import 'package:hadar/notifications.dart';
import 'package:hadar/dialyse.dart';

class Journal extends StatelessWidget {
  const Journal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double canvasWidth = 357;
    final double viewRatio = canvasWidth / 792; // Adjust this value if needed

    return Scaffold(
      body: Container(
        width: 357,
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
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
                            children: [



                              Positioned(
                                left: 115,
                                top: 59,
                                child: Text(
                                  'Journal détaillé',
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
                                top: 52,
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
                                top: 60,
                                child: SizedBox.square(
                                  dimension: 24,
                                  child:GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },

                                    child: Image.network(
                                      'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/JG9nPX0jK9XSmvjagLhvnIJwZ1F2%2Fuploads%2Fimages%2F8929b6a0_2ba3_11ee_b728_0348c33fb45b_sans_titre.png?alt=media',
                                      width: 602,
                                      height: 282,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: -1,
                                top: 200,
                                child:GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                                      return FullScreenImage();
                                    }));
                                  }, child:Image.network(
                                  'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/JG9nPX0jK9XSmvjagLhvnIJwZ1F2%2Fuploads%2Fimages%2F5d216820_2ba6_11ee_946f_5f2919a44104_now.png?alt=media',
                                  width: 398,
                                  height: 196,
                                  fit: BoxFit.contain,
                                ),
                                ),
                              ),
                              Positioned(
                                left: 6,
                                top: 132,
                                child: Container(
                                  width: 339,
                                  height: 56,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF8F8F8),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0x21000000),
                                        spreadRadius: 0,
                                        offset: Offset(1, 1),
                                        blurRadius: 15,
                                      )
                                    ],
                                  ),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        left: 103,
                                        top: 17,
                                        child: SizedBox(
                                          width: 156,
                                          height: 26,
                                          child: Text(
                                            'Taux de glucose courant',
                                            style: TextStyle(
                                              color: Color(0xFF8A8A8A),
                                              fontSize: 14,
                                              fontFamily: 'Roboto',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 127,
                                        top: 39,
                                        child: Text(
                                          '3,314  mmol/L',
                                          style: TextStyle(
                                            color: Color(0xFF1C1A1A),
                                            fontSize: 14,
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
                                left: 246,
                                top: 670,
                                child: Container(
                                  width: 93,
                                  height: 26,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEFE8E8),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0x28000000),
                                        spreadRadius: 0,
                                        offset: Offset.zero,
                                        blurRadius: 8,
                                      )
                                    ],
                                  ),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        left: 12,
                                        top: 8,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => Dialyse(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            'Autres analyses',
                                            style: TextStyle(
                                              color: Color(0xFF28282D),
                                              fontSize: 11,
                                              fontFamily: 'Roboto',
                                            ),
                                          ),
                                        ),),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 6,
                                top: 592,
                                child: Container(
                                  width: 344,
                                  height: 55,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFD68B8B),
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
                                      Positioned(
                                        left: 13,
                                        top: 22,
                                        child: Text(
                                          'Date de dernière injection',
                                          style: TextStyle(
                                            color: Color(0xFF242425),
                                            fontSize: 12,
                                            fontFamily: 'Roboto',
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 179,
                                        top: 24,
                                        child: SizedBox(
                                          width: 26,
                                          height: 8,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              Positioned(
                                                left: -1,
                                                top: -1,
                                                child: Text(
                                                  'Date:',
                                                  style: TextStyle(
                                                    color: Color(0xFF8A8A8A),
                                                    fontSize: 11,
                                                    fontFamily: 'Roboto',
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 217,
                                        top: 26,
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
                                      Positioned(
                                        left: 291,
                                        top: 26,
                                        child: Text(
                                          '8:42',
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

                                ),
                              ),
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
class FullScreenImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context); // Go back when tapped
        },
        child: Center(
          child: Hero(
            tag: 'your_image_tag', // Same tag as the one used in the previous screen
            child: Image.network(
              'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/JG9nPX0jK9XSmvjagLhvnIJwZ1F2%2Fuploads%2Fimages%2F5d216820_2ba6_11ee_946f_5f2919a44104_now.png?alt=media',
            ),
          ),
        ),
      ),
    );
  }
}