import 'dart:async';

import 'package:flutter/material.dart';
import 'package:library_management/Components/HomeScreen/home_screen.dart';
import 'package:library_management/Components/LoginScreen/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SplashScreen> {
  var loadToken;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    startTimer();
    getToken();
  }

  getToken() async {
    final prefs = await SharedPreferences.getInstance();
    final String? token = prefs.getString('token');
    loadToken = token;
    print("token {$token}");
  }

  startTimer() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, loginRoute);
  }

  loginRoute() {
    if (loadToken != null) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF41A58D),
              gradient: LinearGradient(
                colors: [(Color(0xFF276955)), (Color(0xFF41A58D))],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: Image.asset("assets/images/logo1.png"),
          ),
        ],
      ),
    );
  }
}
