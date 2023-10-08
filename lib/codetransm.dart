import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'connect.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class CodeTransm extends StatefulWidget {
  @override
  _CodeTransmState createState() => _CodeTransmState();
}

class _CodeTransmState extends State<CodeTransm> {
  TextEditingController _codeController = TextEditingController();
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  String qrText = '';

  void performHTTPRequest() async {
    final url = Uri.parse('http://your-api-url.com'); // Replace with your API URL
    // Create the request body
    Map<String, dynamic> requestBody = {
      'code': _codeController.text,
    };

    final response = await http.post(
      url,
      body: json.encode(requestBody),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      // Request successful
      final responseBody = json.decode(response.body);
      print(responseBody);
    } else {
      // Request failed
      print('Request failed with status: ${response.statusCode}');
    }
  }

  @override
  void dispose() {
    _codeController.dispose();
    controller?.dispose();
    super.dispose();
  }

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
                      left: -9,
                      top: 10,
                      child: Container(
                        width: 375,
                        height: 100,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(),
                      ),
                    ),
                    Positioned(
                      left: 60,
                      top: 67,
                      child: Text(
                        'Où trouver le code de modele',
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
                      left: 13,
                      top: 60,
                      child: SizedBox.square(
                        dimension: 40,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
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
                              left: 8,
                              top: 8,
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
                                              builder: (context) => Connect(),
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
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 3,
                      top: 205,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        clipBehavior: Clip.hardEdge,
                        child: Image.network(
                          'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FDhCzv8XVh75Ub3k6rcXE%2F66648ad4920ee33b29e8a928e488829ba9bfcb2c?alt=media&token=27e0709f-de8d-416c-b62b-37f8d780b650',
                          width: 354,
                          height: 223,
                          fit: BoxFit.none,
                          alignment: const Alignment(0.12, -1),
                          scale: 5.549,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 630,
                      child: SizedBox(
                        width: 317,
                        height: 317,
                        child: QRView(
                          key: qrKey,
                          onQRViewCreated: (controller) {
                            this.controller = controller;
                            controller.scannedDataStream.listen((scanData) {
                              setState(() {
                                qrText = scanData.code!;
                              });
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 520,
                      child: Container(
                        width: 325,
                        height: 56,
                        decoration: BoxDecoration(
                          color: const Color(0xFF199A8E),
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: TextField(
                          controller: _codeController,
                          decoration: InputDecoration(
                            contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16),
                            hintText: 'Enter your code',
                            hintStyle: TextStyle(color: Colors.white),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 600,
                      child: Text(
                        'Detected QR Code: $qrText',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 680,
                      child: Container(
                        width: 325,
                        height: 56,
                        decoration: BoxDecoration(
                          color: const Color(0xFF199A8E),
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: TextButton(
                          onPressed: () {
                            performHTTPRequest();
                          },
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
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
    );
  }
}
