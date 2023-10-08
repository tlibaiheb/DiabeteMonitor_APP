import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'infosup.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _emergencyNumberController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  bool _acceptTerms = false;

  void _submitForm(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      // Save form data to variables
      String name = _nameController.text;
      String email = _emailController.text;
      String phoneNumber = _phoneNumberController.text;
      String emergencyNumber = _emergencyNumberController.text;
      String password = _passwordController.text;

      // Print form data
      print('Name: $name');
      print('Email: $email');
      print('Phone Number: $phoneNumber');
      print('Emergency Number: $emergencyNumber');
      print('Password: $password');

      // Perform API request or other actions with the form data
      performHTTPRequest();

      // Navigate to the next screen or perform other actions
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => InfoSup()),
      );
    }
  }

  void performHTTPRequest() async {
    final url = Uri.parse('test'); // Replace with your API URL

    // Create the request body
    Map<String, dynamic> requestBody = {
      'name': _nameController.text,
      'email': _emailController.text,
      'phoneNumber': _phoneNumberController.text,
      'emergencyNumber': _emergencyNumberController.text,
      'roles': [
        {
          "name": "ROLE_PATIENT"
        }
      ],
      'password': _passwordController.text,
    };

    // Send the HTTP request
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(requestBody),
    );

    // Handle the response
    if (response.statusCode == 200) {
      // Request successful
      print('Request successful');
    } else {
      // Request failed
      print('Request failed with status: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Création d’un nouveau compte',
                style: GoogleFonts.getFont(
                  'Inter',
                  color: const Color(0xFF101522),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  height: 1.4,
                ),
              ),
              SizedBox(height: 40),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: 'Nom',
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Veuillez entrer votre nom';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Veuillez entrer votre email';
                        }
                        // Add email validation if needed
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _phoneNumberController,
                      decoration: InputDecoration(
                        labelText: 'Num Téléphone',
                        prefixIcon: Icon(Icons.phone),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Veuillez entrer votre numéro de téléphone';
                        }
                        // Add phone number validation if needed
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _emergencyNumberController,
                      decoration: InputDecoration(
                        labelText: 'Num Téléphone d’un proche',
                        prefixIcon: Icon(Icons.phone),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Mot de passe',
                        prefixIcon: Icon(Icons.lock),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Veuillez entrer votre mot de passe';
                        }
                        // Add password validation if needed
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _confirmPasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Re-tapez votre mot de passe',
                        prefixIcon: Icon(Icons.lock),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Veuillez confirmer votre mot de passe';
                        } else if (value != _passwordController.text) {
                          return 'Les mots de passe ne correspondent pas';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: [
                        Checkbox(
                          value: _acceptTerms,
                          onChanged: (value) {
                            setState(() {
                              _acceptTerms = value!;
                            });
                          },
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: GoogleFonts.getFont(
                                'Inter',
                                color: const Color(0xFF3B4353),
                                fontSize: 13,
                                height: 1.4,
                              ),
                              children: [
                                TextSpan(text: 'J’accepte les  '),
                                TextSpan(
                                  text: 'conditions d’utilisation',
                                  style: TextStyle(
                                    color: Color(0xFF199A8E),
                                  ),
                                ),
                                TextSpan(text: ' et '),
                                TextSpan(
                                  text: 'la politique de confidentialité ',
                                  style: TextStyle(
                                    color: Color(0xFF199A8E),
                                  ),
                                ),
                                TextSpan(text: 'de AlphaGly'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          _submitForm(context);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF199A8E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                          minimumSize: Size(200, 56),
                        ),
                        child: Text(
                          'Continuer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
