import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hadar/signup.dart';
import 'home.dart'; // Import the page you want to navigate to
import 'signin.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});



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
                      left: 13,
                      top: 57,
                      child: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FDhCzv8XVh75Ub3k6rcXE%2F47802c72a44bd65587ca9ae7325e4e74aab3e62e?alt=media&token=f2757bde-941f-4558-aa84-4fb26416c6af',
                        width: 332,
                        height: 384,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Positioned(
                      left: 86,
                      top: 462,
                      child: SizedBox(
                        width: 214,
                        height: 162,
                        child: Text(
                          "Votre santé est votre plus grande force. Suivez au quotidien l’évolution de votre diabète. Vous serez suivi par des médecins compétents. Commencez dès aujourd'hui pour un avenir meilleur et plus sain.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 78,
                      top: 630,
                      child: Container(
                        width: 221,
                        height: 47,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: const Color(0xFF0EBE7F),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 133,
                      top: 640,
                      child: SizedBox(

                        width: 143,
                        height: 19,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignIn(),
                              ),
                            );
                          },
                        child: SizedBox(
                          width: 143,
                          height: 19,
                          child: Text(
                            'Commencer',
                            style: GoogleFonts.getFont(
                              'Rubik',
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    ),
                    Positioned(
                      left: 294,
                      top: 6,
                      child: SizedBox(
                        width: 16,
                        height: 14,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              left: 1,
                              top: 2,
                              child: Image.network(
                                'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2Fa070d755c87280e9292ad1a68f9cd0db.png',
                                width: 14,
                                height: 10,
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
      ));
  }
}
