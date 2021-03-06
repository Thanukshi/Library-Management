import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:library_management/Components/Common/common.dart';
import 'package:library_management/Components/HomeScreen/home_screen.dart';
import 'package:library_management/Components/LoginScreen/login_screen.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    String userId = '';
    String userEmail = '';
    String username = '';
    String userPass = '';
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 260,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: Color(0xFF41A58D),
                gradient: LinearGradient(
                  colors: [Color(0xFF41A58D), Color(0xFF276955)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 50,
                      ),
                      child: Image.asset("assets/images/logo1.png"),
                      height: 150,
                      width: 150,
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20, top: 20),
                      alignment: Alignment.bottomRight,
                      child: const Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: const Color(0xFF276955),
                decoration: const InputDecoration(
                    icon: Icon(
                      Icons.person_add,
                      color: Color(0xFF276955),
                    ),
                    hintText: "Enter your student id number",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
                onChanged: (value) {
                  userId = value;
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: const Color(0xFF276955),
                decoration: const InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Color(0xFF276955),
                    ),
                    hintText: "Enter your email",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
                onChanged: (value) {
                  userEmail = value;
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: const Color(0xFF276955),
                decoration: const InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Color(0xFF276955),
                    ),
                    hintText: "Enter your username",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
                onChanged: (value) {
                  username = value;
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: const EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: const Color(0xFF276955),
                decoration: const InputDecoration(
                    icon: Icon(
                      Icons.vpn_key,
                      color: Color(0xFF276955),
                    ),
                    hintText: "Enter your password",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
                onChanged: (value) {
                  userPass = value;
                },
              ),
            ),
            GestureDetector(
              onTap: () =>
                  {registerUser(userId, userEmail, username, userPass)},
              // {registerUser(userEmail, username, userPhone, userPass)},
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
                padding: const EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF276955),
                        (Color(0xFF41A58D)),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      (BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE),
                      ))
                    ]),
                child: const Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already't have an Account?  "),
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ))
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF276955),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void registerUser(
      String id, String email, String username, String password) async {
    // ignore: unrelated_type_equality_checks
    if (id == "" || id == Null) {
      showErrorToast(context, "Student ID Error",
          "Student id can no be empty. Please Enter Student id.");
    } else if (email == "" || email == Null) {
      showErrorToast(
          context, "Email Error", "Email can no be empty. Please Enter Email.");
    } else if (username == "" || username == Null) {
      showErrorToast(context, "Username Error",
          "Username can no be empty. Please Enter Username.");
    } else if (password == "" || password == Null) {
      showErrorToast(context, "Password Error",
          "Password can no be empty. Please Enter Password.");
    } else if (!isEmail(email)) {
      showErrorToast(context, "Email Error",
          "This email address is invalid. Please enter a valid email address.");
    } else if (!isPassword(password)) {
      showErrorToast(
        context,
        "Password Error",
        "Password has 8 characters, uppercase and lowercase letter, number and special character.",
      );
    } else {
      try {
        var response =
            await Dio().post(CommonService.URL + "/user/register", data: {
          "user_id": id,
          "user_email": email,
          "user_name": username,
          "user_password": password
        });
        // ignore: avoid_print
        print("datasss" + response.data.toString());

        if (response.statusCode == 200) {
          if (response.data["code"] == 208 &&
              response.data["status"] == "Student ID is Already Reported") {
            showErrorToast(context, "Student ID Error",
                response.data["message"].toString());
          } else if (response.data["code"] == 208 &&
              response.data["status"] == "Email is Already Reported") {
            showErrorToast(context, "Email Address Error",
                response.data["message"].toString());
          } else {
            final prefs = await SharedPreferences.getInstance();
            await prefs.setString('token', response.data["token"].toString());
            await prefs.setString(
                'user_id', response.data["sub"]["user_id"].toString());
            await prefs.setString(
                'user_email', response.data["sub"]["user_email"].toString());
            await prefs.setString(
                'user_name', response.data["sub"]["user_name"].toString());
            // final String? token = prefs.getString('token');
            var userEmail = prefs.getString('user_email');
            print("user_Email : $userEmail");

            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ));
          }
        }
      } catch (e) {
        // ignore: avoid_print
        print(e);
      }
    }
  }

  bool isEmail(String email) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = RegExp(p);

    return regExp.hasMatch(email);
  }

  bool isPassword(String password) {
    String p = r'(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{8,}$';

    RegExp regExp = RegExp(p);

    return regExp.hasMatch(password);
  }

  void showSuccessToast(context, toastTitle, toastDescription) {
    MotionToast.success(
      description: Text(
        "$toastDescription",
        style: const TextStyle(fontSize: 14),
      ),
      title: Text(
        "$toastTitle",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ).show(context);
  }

  void showErrorToast(context, toastTitle, toastDescription) {
    MotionToast.error(
      description: Text(
        "$toastDescription",
        style: const TextStyle(fontSize: 14),
      ),
      title: Text(
        "$toastTitle",
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    ).show(context);
  }
}
