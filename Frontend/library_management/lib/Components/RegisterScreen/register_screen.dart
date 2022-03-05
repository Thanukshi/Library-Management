import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:library_management/Components/LoginScreen/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    String userEmail = '';
    String username = '';
    String userPhone = '';
    String userPass = '';
    String confirmPass = '';
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: Color(0xFF14DDAF),
                gradient: LinearGradient(
                  colors: [new Color(0xFF14DDAF), new Color(0xFF1BE5B7)],
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
                      margin: EdgeInsets.only(
                        top: 50,
                      ),
                      child: Image.asset("assets/images/logo.png"),
                      height: 130,
                      width: 130,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20, top: 20),
                      alignment: Alignment.bottomRight,
                      child: Text(
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
              margin: EdgeInsets.only(left: 20, right: 20, top: 50),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xff14DDAF),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Color(0xff14DDAF),
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
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xff14DDAF),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Color(0xff14DDAF),
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
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Color(0xff14DDAF),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.phone,
                      color: Color(0xff14DDAF),
                    ),
                    hintText: "Enter your phone number",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
                onChanged: (value) {
                  userPhone = value;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE))
                ],
              ),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: Color(0xff14DDAF),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.vpn_key,
                      color: Color(0xff14DDAF),
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
              onTap: () => {},
              // {registerUser(userEmail, username, userPhone, userPass)},
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        new Color(0xFF14DDAF),
                        (new Color(0xFF1BE5B7)),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      (BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE),
                      ))
                    ]),
                child: Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already't have an Account?  "),
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ))
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF14DDAF),
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

//   void registerUser(
//       String email, String username, String phone, String password) async {
//     if (email == "" || email == Null) {
//       Fluttertoast.showToast(
//           msg: "Please Enter Email",
//           fontSize: 18,
//           gravity: ToastGravity.BOTTOM,
//           backgroundColor: Colors.red,
//           textColor: Colors.white);
//     } else if (username == "" || username == Null) {
//       Fluttertoast.showToast(
//           msg: "Please Enter Username",
//           fontSize: 18,
//           gravity: ToastGravity.BOTTOM,
//           backgroundColor: Colors.red,
//           textColor: Colors.white);
//     } else if (phone == "" || phone == Null) {
//       Fluttertoast.showToast(
//           msg: "Please Enter Phone",
//           fontSize: 18,
//           gravity: ToastGravity.BOTTOM,
//           backgroundColor: Colors.red,
//           textColor: Colors.white);
//     } else if (password == "" || password == Null) {
//       Fluttertoast.showToast(
//           msg: "Please Enter Password",
//           fontSize: 18,
//           gravity: ToastGravity.BOTTOM,
//           backgroundColor: Colors.red,
//           textColor: Colors.white);
//     } else if (!isEmail(email)) {
//       Fluttertoast.showToast(
//           msg: "Please enter a valid email.",
//           fontSize: 18,
//           gravity: ToastGravity.BOTTOM,
//           backgroundColor: Colors.red,
//           textColor: Colors.white);
//     } else if (!isPassword(password)) {
//       Fluttertoast.showToast(
//           msg:
//               "Password has 8 characters, It must have one uppercase letter, lowercase letter, number and special character.",
//           fontSize: 18,
//           gravity: ToastGravity.BOTTOM,
//           backgroundColor: Colors.red,
//           textColor: Colors.white);
//     }
//     try {
//       var response =
//           await Dio().post(CommonService.LoanURL + "/user/register", data: {
//         "user_email": email,
//         "user_name": username,
//         "user_phone": phone,
//         "user_password": password
//       });
//       print("datasss" + response.data.toString());

//       if (response.statusCode == 200) {
//         if (response.data["code"] == 208 &&
//             response.data["status"] == "Email Exist") {
//           Fluttertoast.showToast(
//               msg: response.data["message"].toString(),
//               fontSize: 18,
//               gravity: ToastGravity.BOTTOM,
//               backgroundColor: Colors.red,
//               textColor: Colors.white);
//         } else if (response.data["code"] == 208 &&
//             response.data["status"] == "Username Exist") {
//           Fluttertoast.showToast(
//               msg: response.data["message"].toString(),
//               fontSize: 18,
//               gravity: ToastGravity.BOTTOM,
//               backgroundColor: Colors.red,
//               textColor: Colors.white);
//         } else if (response.data["code"] == 208 &&
//             response.data["status"] == "Phone Exist") {
//           Fluttertoast.showToast(
//               msg: response.data["message"].toString(),
//               fontSize: 18,
//               gravity: ToastGravity.BOTTOM,
//               backgroundColor: Colors.red,
//               textColor: Colors.white);
//         } else {
//           final prefs = await SharedPreferences.getInstance();
//           await prefs.setString('token', response.data["token"].toString());
//           await prefs.setString(
//               'user_email', response.data["sub"]["user_email"].toString());
//           await prefs.setString(
//               'user_name', response.data["sub"]["user_name"].toString());
//           await prefs.setString(
//               'user_phone', response.data["sub"]["user_phone"].toString());
//           // final String? token = prefs.getString('token');
//           var userEmail = prefs.getString('user_email');
//           print("user_Email : $userEmail");

//           Fluttertoast.showToast(
//               msg: "Registered Successfully.",
//               fontSize: 18,
//               gravity: ToastGravity.BOTTOM,
//               backgroundColor: Colors.green,
//               textColor: Colors.white);

//           Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => HomeScreen(),
//               ));
//         }
//       }
//     } catch (e) {
//       print(e);
//     }
//   }

//   bool isEmail(String email) {
//     String p =
//         r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

//     RegExp regExp = new RegExp(p);

//     return regExp.hasMatch(email);
//   }

//   bool isPassword(String password) {
//     String p = r'(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-z])(?=.*[A-Z]).{8,}$';

//     RegExp regExp = new RegExp(p);

//     return regExp.hasMatch(password);
//   }
}
