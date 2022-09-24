import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:tripit1/intro_screens/Signin/signin.dart';
import 'package:tripit1/location/Location.dart';

import '../../Model/signup_response.dart';
import '../../colors.dart';
import 'dart:math' as math;

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String email = "";
  String password = "";
  String firstname = "";
  String lastname = "";
  dynamic age = "";
  String gender = "";
  bool isPassword = true;
  bool isLoading = false;
  bool agreement = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [CustomColor.green1, CustomColor.green2],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              transform: GradientRotation(math.pi / 2),
              tileMode: TileMode.clamp,
            )),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Image.asset(
                    "assets/logowhite.png",
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 25.0,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 595,
                        margin: const EdgeInsets.symmetric(horizontal: 55),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 585,
                          margin: const EdgeInsets.symmetric(horizontal: 40),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 575,
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 32,
                                ),
                                Center(
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 23.0),
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 40.0, right: 40.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                        hintText: "First Name"),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Enter Valid Name";
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      setState(() {
                                        firstname = value!;
                                      });
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 40.0, right: 40.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                        hintText: "Last Name"),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Enter Valid Name";
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      setState(() {
                                        lastname = value!;
                                      });
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 40.0, right: 40.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                        hintText: "Email"),
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          !value.contains("@")) {
                                        return "Enter Valid Email";
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      setState(() {
                                        email = value!;
                                      });
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 40.0, right: 40.0),
                                  child: TextFormField(
                                    obscureText: isPassword,
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      suffixIcon: GestureDetector(
                                        child: Icon(isPassword
                                            ? Icons.visibility_off_outlined
                                            : Icons.visibility_outlined),
                                        onTap: () {
                                          setState(() {
                                            isPassword = !isPassword;
                                          });
                                        },
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Enter Valid Password";
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      setState(() {
                                        password = value!;
                                      });
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 40.0, right: 40.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration:
                                        const InputDecoration(hintText: "Age"),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Enter Valid Phone Number";
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      setState(() {
                                        age = value!;
                                      });
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 40.0, right: 40.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                        hintText: "Gender"),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Enter Valid Phone Number";
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      setState(() {
                                        gender = value!;
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  leading: Checkbox(
                                    value: agreement,
                                    onChanged: (value) {
                                      setState(() {
                                        agreement = value!;
                                      });
                                    },
                                  ),
                                  title: RichText(
                                    textAlign: TextAlign.start,
                                    text: const TextSpan(
                                        text: "I agree the",
                                        style: TextStyle(color: Colors.black),
                                        children: [
                                          TextSpan(
                                              text: " Terms & Conditions",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  decoration:
                                                      TextDecoration.underline,
                                                  fontWeight: FontWeight.bold)),
                                        ]),
                                  ),
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: isLoading
                                      ? Center(
                                          child: CircularProgressIndicator(),
                                        )
                                      : GestureDetector(
                                          child: Container(
                                            width: 280,
                                            height: 50,
                                            child: Image.asset(
                                                "assets/Button 01.png"),
                                          ),
                                          onTap: () {
                                            if (_formKey.currentState!
                                                .validate()) {
                                              _formKey.currentState!.save();
                                              signup();
                                            }
                                          },
                                        ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 140.0,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/Facebook.png",
                      ),
                      SizedBox(
                        width: 26,
                      ),
                      Image.asset("assets/Google.png"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 97.0),
                      child: Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 3),
                    GestureDetector(
                        child: Text("Sign In",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SignIn()),
                          );
                        })
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> signup() async {
    setState(() {
      isLoading = true;
    });

    Response loginResponse =
        await post(Uri.parse("http://alcaptin.com/api/login"), headers: {
      "Accept": "application/json",
      "isMobile": "1",
      "appType": "client",
    }, body: {
      "email": email,
      "password": password,
      "device_id": "50",
      "device_name": "test",
    });

    dynamic convertedJson = jsonDecode(loginResponse.body);

    SignupResponse user = SignupResponse.fromJson(convertedJson);
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => Location()),
    );

    setState(() {
      isLoading = false;
    });
  }
}
