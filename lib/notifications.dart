import 'dart:math' show pi;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hadar/device.dart';
import 'package:hadar/journal.dart';

import 'home.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
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
                        left: -18,
                        top: 0,
                        child: Container(
                          width: 375,
                          height: 100,
                          clipBehavior: Clip.hardEdge,
                          decoration: const BoxDecoration(),
                        ),
                      ),
                      Positioned(
                        left: 111,
                        top: 59,
                        child: Text(
                          'Notifications',
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
                              ),
                            ],

                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 113,
                        child: Container(
                          width: 327,
                          height: 138,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x140F163A),
                                spreadRadius: 0,
                                offset: Offset(0, 4),
                                blurRadius: 40,
                              )
                            ],
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 327,
                                  height: 36,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF24A19C),
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 38,
                                top: 46,
                                child: Text(
                                  'Connection Réussie avec le \ntransmetteur',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: const Color(0xFF1B1C1F),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 9,
                                top: 48,
                                child: Container(
                                  width: 18,
                                  height: 18,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1.5,
                                      color: const Color(0xFF24A19C),
                                    ),
                                    borderRadius: BorderRadius.circular(9),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 15,
                                top: 54,
                                child: Container(
                                  width: 6,
                                  height: 6,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF24A19C),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 9,
                                top: 107,
                                child: Image.network(
                                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2Fb5f5c3206399d9da356e80d0f0322602.png',
                                  width: 295,
                                  height: 1,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Positioned(
                                left: 9,
                                top: 124,
                                child: SizedBox.square(
                                  dimension: 14,
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Image.network(
                                          'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2Fc8c872223a3c3146ef2b679aa3983f36.png',
                                          width: 14,
                                          height: 14,
                                          fit: BoxFit.contain,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 28,
                                top: 122,
                                child: Text(
                                  '08.30 PM',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: const Color(0xFFFF486A),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 147,
                                top: 122,
                                child: Text(
                                  'Lun, 19 Juillet 2022 ',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: const Color(0xFF767E8C),
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 275,
                        child: Container(
                          width: 327,
                          height: 138,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x140F163A),
                                spreadRadius: 0,
                                offset: Offset(0, 4),
                                blurRadius: 40,
                              )
                            ],
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 327,
                                  height: 36,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFEA4335),
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 16,
                                top: 8,
                                child: SizedBox.square(
                                  dimension: 14,
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Image.network(
                                          'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2F7458cc768ba9c946a962ccbf91bb0e5c.png',
                                          width: 14,
                                          height: 14,
                                          fit: BoxFit.contain,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 37,
                                top: 7,
                                child: Text(
                                  'Pic inattendu du glycémie',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 291,
                                top: 48,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: const BoxDecoration(),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        left: 3,
                                        top: 9,
                                        child: Image.network(
                                          'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2F84c8d0ddb2b4a63786fd919e69533e60.png',
                                          width: 13,
                                          height: 2,
                                          fit: BoxFit.contain,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 45,
                                top: 51,
                                child: Text(
                                  'Votre médecin a été notifié et  \nl’injection automatique a été déclanché',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: const Color(0xFF1B1C1F),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 16,
                                top: 53,
                                child: Container(
                                  width: 18,
                                  height: 18,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1.5,
                                      color: const Color(0xFFEA4335),
                                    ),
                                    borderRadius: BorderRadius.circular(9),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 22,
                                top: 59,
                                child: Container(
                                  width: 6,
                                  height: 6,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEA4335),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 6,
                                top: 98,
                                child: Image.network(
                                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2Fb5f5c3206399d9da356e80d0f0322602.png',
                                  width: 295,
                                  height: 1,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Positioned(
                                left: 6,
                                top: 115,
                                child: SizedBox.square(
                                  dimension: 14,
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Image.network(
                                          'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2Fc8c872223a3c3146ef2b679aa3983f36.png',
                                          width: 14,
                                          height: 14,
                                          fit: BoxFit.contain,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 25,
                                top: 113,
                                child: Text(
                                  '08.30 PM',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: const Color(0xFFFF486A),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 144,
                                top: 113,
                                child: Text(
                                  'Lun, 19 Juillet 2022 ',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: const Color(0xFF767E8C),
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 437,
                        child: Container(
                          width: 327,
                          height: 138,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x140F163A),
                                spreadRadius: 0,
                                offset: Offset(0, 4),
                                blurRadius: 40,
                              )
                            ],
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: 16,
                                top: 8,
                                child: SizedBox.square(
                                  dimension: 14,
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Image.network(
                                          'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2F7458cc768ba9c946a962ccbf91bb0e5c.png',
                                          width: 14,
                                          height: 14,
                                          fit: BoxFit.contain,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 37,
                                top: 7,
                                child: Text(
                                  'Pic inattendu du glycémie',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 291,
                                top: 48,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: const BoxDecoration(),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        left: 3,
                                        top: 9,
                                        child: Image.network(
                                          'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2F84c8d0ddb2b4a63786fd919e69533e60.png',
                                          width: 13,
                                          height: 2,
                                          fit: BoxFit.contain,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 45,
                                top: 51,
                                child: Text(
                                  'Vous pouvez consulter l’historique des \nrepas',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: const Color(0xFF1B1C1F),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 16,
                                top: 53,
                                child: Container(
                                  width: 18,
                                  height: 18,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1.5,
                                      color: const Color(0xFFEA4335),
                                    ),
                                    borderRadius: BorderRadius.circular(9),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 22,
                                top: 59,
                                child: Container(
                                  width: 6,
                                  height: 6,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFEA4335),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 6,
                                top: 98,
                                child: Image.network(
                                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2Fb5f5c3206399d9da356e80d0f0322602.png',
                                  width: 295,
                                  height: 1,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Positioned(
                                left: 6,
                                top: 115,
                                child: SizedBox.square(
                                  dimension: 14,
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Image.network(
                                          'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2Fc8c872223a3c3146ef2b679aa3983f36.png',
                                          width: 14,
                                          height: 14,
                                          fit: BoxFit.contain,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 25,
                                top: 113,
                                child: Text(
                                  '08.30 PM',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: const Color(0xFFFF486A),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 93,
                                top: 115,
                                child: SizedBox.square(
                                  dimension: 14,
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        left: 1,
                                        top: 1,
                                        child: Image.network(
                                          'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2Fa52729e8b49b0a8e898d69b403b4f8bd.png',
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
                                left: 110,
                                top: 113,
                                child: Text(
                                  '1',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: const Color(0xFF767E8C),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 127,
                                top: 114,
                                child: SizedBox.square(
                                  dimension: 14,
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Image.network(
                                          'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2Ff7b734bfa7982a609fc95dba2330afab.png',
                                          width: 14,
                                          height: 14,
                                          fit: BoxFit.contain,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 144,
                                top: 113,
                                child: Text(
                                  '2',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: const Color(0xFF767E8C),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 216,
                                top: 113,
                                child: Text(
                                  'Lun, 19 Juillet 2022 ',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: const Color(0xFF767E8C),
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 426,
                        child: Container(
                          width: 327,
                          height: 36,
                          decoration: const BoxDecoration(
                            color: Color(0xFF1B1C1F),
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(8),
                            ),
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                left: 16,
                                top: 8,
                                child: SizedBox(
                                  width: 295,
                                  height: 20,
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 3,
                                        child: SizedBox(
                                          width: 96,
                                          height: 15,
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: SizedBox(
                                                  width: 96,
                                                  height: 15,
                                                  child: Stack(
                                                    clipBehavior: Clip.none,
                                                    children: [
                                                      Positioned(
                                                        left: 0,
                                                        top: 0,
                                                        child: SizedBox.square(
                                                          dimension: 14,
                                                          child: Stack(
                                                            clipBehavior: Clip.none,
                                                            children: [
                                                              Positioned(
                                                                left: 0,
                                                                top: 0,
                                                                child: Image.network(
                                                                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2F7458cc768ba9c946a962ccbf91bb0e5c.png',
                                                                  width: 14,
                                                                  height: 14,
                                                                  fit: BoxFit.contain,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        left: 21,
                                                        top: -1,
                                                        child: Text(
                                                          'Votre repas a été enregistré avec succés',
                                                          style: GoogleFonts.getFont(
                                                            'Inter',
                                                            color: Colors.white,
                                                            fontSize: 12,
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
                                      Positioned(
                                        left: 275,
                                        top: 0,
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          clipBehavior: Clip.hardEdge,
                                          decoration: const BoxDecoration(),
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              Positioned(
                                                left: 3,
                                                top: 9,
                                                child: Image.network(
                                                  'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2F84c8d0ddb2b4a63786fd919e69533e60.png',
                                                  width: 13,
                                                  height: 2,
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
                              )
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Journal()),
                        );
                      },
                      child: buildNavbarItem(

iconUrl:                        'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FDhCzv8XVh75Ub3k6rcXE%2F9fa0b2763a613dcfd8dd0b4212d11eb9d8e94c62?alt=media&token=d3ee03bc-5355-4ccc-8f5c-fd57f5aeeafb',
                        title: 'Journal',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle navigation to Notifications Page


                      },
                      child: buildNavbarItem(
                        iconUrl:
                        'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/JG9nPX0jK9XSmvjagLhvnIJwZ1F2%2Fuploads%2Fimages%2Ffdc2eea0_27a2_11ee_b327_6b7fc76faf4d_icons8_notification_64.png?alt=media',
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
