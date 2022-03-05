import 'package:flutter/material.dart';
import 'package:library_management/Components/RegisterScreen/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    String userEmail = '';
    String userPass = '';
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: Color(0xFF41A58D),
                gradient: LinearGradient(
                  colors: [new Color(0xFF41A58D), new Color(0xFF276955)],
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
                      child: Image.asset("assets/images/logo1.png"),
                      height: 150,
                      width: 150,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20, top: 10),
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Login",
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
              margin: EdgeInsets.only(left: 20, right: 20, top: 70),
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
                cursorColor: Color(0xFF41A58D),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Color(0xFF41A58D),
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
                obscureText: true,
                cursorColor: Color(0xFF41A58D),
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.vpn_key,
                      color: Color(0xFF41A58D),
                    ),
                    hintText: "Enter your password",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
                onChanged: (value) {
                  userPass = value;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, right: 20),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: Text("Forget Passwoed?"),
                onTap: () => {},
              ),
            ),
            GestureDetector(
              onTap: () => {},
              //{loginUser(userEmail, userPass)},
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 60),
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        new Color(0xFF41A58D),
                        (new Color(0xFF41A58D)),
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
                  "Login",
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
                  Text("Don't have an Account?  "),
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      ),
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF41A58D),
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

//   void loginUser(String email, String password) async {
//     if (email == "" || email == Null) {
//       Fluttertoast.showToast(
//           msg: "Please Enter Email",
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
//     } else {
//       try {
//         final prefs = await SharedPreferences.getInstance();
//         final String? token = prefs.getString('token');

//         if ("{$token}" == Null || "{$token}" == '{null}') {
//           var response = await Dio().post(CommonService.LoanURL + "/user/login",
//               data: {"user_email": email, "user_password": password});
//           print("datasss" + response.data.toString());

//           if (response.statusCode == 200) {
//             if (response.data['code'] == 203 &&
//                 response.data['status'] == "Bad Request") {
//               Fluttertoast.showToast(
//                   msg: response.data['message'].toString(),
//                   fontSize: 18,
//                   gravity: ToastGravity.BOTTOM,
//                   backgroundColor: Colors.red,
//                   textColor: Colors.white);
//             } else if (response.data['code'] == 203 &&
//                 response.data['status'] == "Password Error") {
//               Fluttertoast.showToast(
//                   msg: response.data['msg'].toString(),
//                   fontSize: 18,
//                   gravity: ToastGravity.BOTTOM,
//                   backgroundColor: Colors.red,
//                   textColor: Colors.white);
//             } else if (response.data["code"] == 201) {
//               await prefs.setString('token', response.data["token"].toString());

//               print(response.data["token"]);
//               print("token {$token}");

//               Fluttertoast.showToast(
//                   msg: "Successfully Logged",
//                   fontSize: 18,
//                   gravity: ToastGravity.BOTTOM,
//                   backgroundColor: Colors.green,
//                   textColor: Colors.white);
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => HomeScreen(),
//                   ));
//             } else {
//               Fluttertoast.showToast(
//                   msg: "Something went wrong....",
//                   fontSize: 18,
//                   gravity: ToastGravity.BOTTOM,
//                   backgroundColor: Colors.red,
//                   textColor: Colors.white);
//             }
//           }
//         } else {
//           Fluttertoast.showToast(
//               msg: "Something went wrong....",
//               fontSize: 18,
//               gravity: ToastGravity.BOTTOM,
//               backgroundColor: Colors.red,
//               textColor: Colors.white);
//         }
//       } catch (e) {
//         print(e);
//       }
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
