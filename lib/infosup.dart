import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hadar/codetransm.dart';
import 'package:hadar/connect.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class InfoSup extends StatefulWidget {
  @override
  _InfoSupState createState() => _InfoSupState();
}

class _InfoSupState extends State<InfoSup> {
  String selectedGender = '';
  double selectedHeight = 100;
  double selectedWeight = 50;

  TextEditingController _selectedGenderController = TextEditingController();
  TextEditingController _selectedHeightController = TextEditingController();
  TextEditingController _selectedWeightController = TextEditingController();

  void _submitForm(BuildContext context) {
    // Save form data to variables
    String selectedGender = _selectedGenderController.text;
    String selectedHeight = _selectedHeightController.text;
    String selectedWeight = _selectedWeightController.text;

    // Print form data
    print('Selected Gender: $selectedGender');
    print('Selected Height: $selectedHeight');
    print('Selected Weight: $selectedWeight');

    // Perform API request or other actions with the form data
    performHTTPRequest();

    // Navigate to the next screen or perform other actions
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Connect()),
    );
  }

  void performHTTPRequest() async {
    final url = Uri.parse('http://your-api-url.com'); // Replace with your API URL
    // Create the request body
    Map<String, dynamic> requestBody = {
      'gender': _selectedGenderController.text,
      'height': _selectedHeightController.text,
      'weight': _selectedWeightController.text,
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
  void initState() {
    super.initState();
    _selectedHeightController.text = selectedHeight.toString();
    _selectedWeightController.text = selectedWeight.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 48, 0, 0),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.network(
                      'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2F654d756d74ac500f7bff5543a244330f.png',
                      width: 40,
                      height: 40,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Informations supplémentaires',
                    style: GoogleFonts.getFont(
                      'Inter',
                      color: const Color(0xFF101522),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = 'Homme';
                        _selectedGenderController.text = 'Homme';
                      });
                    },
                    child: Container(
                      width: 132,
                      height: 132,
                      decoration: BoxDecoration(
                        color: selectedGender == 'Homme'
                            ? Colors.blue.withOpacity(0.2)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.network(
                        'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2F0cdbcbdace85aec2e0f92208f6010dd6.png',
                        width: 85,
                        height: 85,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = 'Femme';
                        _selectedGenderController.text = 'Femme';
                      });
                    },
                    child: Container(
                      width: 132,
                      height: 132,
                      decoration: BoxDecoration(
                        color: selectedGender == 'Femme'
                            ? Colors.pink.withOpacity(0.2)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.network(
                        'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FDhCzv8XVh75Ub3k6rcXE%2F674b7ea8b85b918be112256b0c51bd82.png',
                        width: 85,
                        height: 85,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 32, 0, 0),
              child: Text(
                'Taille',
                style: GoogleFonts.getFont(
                  'DM Sans',
                  color: const Color(0xFF051328),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Slider(
              value: selectedHeight,
              min: 50,
              max: 250,
              onChanged: (value) {
                setState(() {
                  selectedHeight = value;
                  _selectedHeightController.text = value.toStringAsFixed(0);
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: Text(
                '${selectedHeight.round()}cm',
                style: const TextStyle(
                  color: Color(0xFF051328),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 24, 0, 0),
              child: Text(
                'Poids',
                style: GoogleFonts.getFont(
                  'DM Sans',
                  color: const Color(0xFF051328),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Slider(
              value: selectedWeight,
              min: 20,
              max: 200,
              onChanged: (value) {
                setState(() {
                  selectedWeight = value;
                  _selectedWeightController.text = value.toStringAsFixed(0);
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: Text(
                '${selectedWeight.round()}kg',
                style: const TextStyle(
                  color: Color(0xFF051328),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 16, 12, 0),
              child: Container(
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  color: const Color(0xFF199A8E),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: TextButton(
                  onPressed: () {
                    _submitForm(context);
                  },
                  child: Text(
                    'Continuer',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: InfoSup(),
  ));
}
