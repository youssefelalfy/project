import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:tripit1/Model/login_response.dart';
import 'package:tripit1/intro_screens/Signin/signup.dart';
import 'package:tripit1/location/Location.dart';

import '../../colors.dart';
import 'dart:math' as math;

import '../../onboarding/onBoarding.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email = "";
  String password = "";
  bool isPassword = true;
  bool isLoading = false;

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
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Image.asset(
                    "assets/logowhite.png",
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 35.0,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 370,
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
                          height: 355,
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
                          height: 340,
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
                                    "Sign In",
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
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 215, right: 15.0),
                                  child: Text("Forgot Password ?",
                                      style: TextStyle(
                                          color: CustomColor.green1,
                                          fontWeight: FontWeight.w600)),
                                ),
                                SizedBox(
                                  height: 32,
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
                                                "assets/Button 02.png"),
                                          ),
                                          onTap: () {
                                            if (_formKey.currentState!
                                                .validate()) {
                                              _formKey.currentState!.save();
                                              login();
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
                  height: 210,
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
                      padding: const EdgeInsets.only(left: 100.0),
                      child: Text(
                        "Dont't have an account?",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 3),
                    GestureDetector(
                        child: Text("Sign up",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Signup()),
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

  Future login() async {
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

    if (loginResponse.statusCode == 200) {
      LoginResponse user = LoginResponse.fromJson(convertedJson);
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => Location()),
      );
    } else {
      print(convertedJson["message"]);
    }

    setState(() {
      isLoading = false;
    });
  }
}
