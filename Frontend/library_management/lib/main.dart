import 'package:flutter/material.dart';
import 'package:library_management/Components/Onboard_Screen/onboard_screen_one.dart';
import 'package:library_management/Components/SplashScreen/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? initScreen;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sp = await SharedPreferences.getInstance();
  // ignore: await_only_futures
  initScreen = await sp.getInt('initScreen');
  await sp.setInt('initScreen', 1);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const OnboardScreenOne(),
      initialRoute:
          initScreen == 0 || initScreen == null ? 'onboard' : 'home',
      routes: {
        'home': (context) => const SplashScreen(),
        'onboard': (context) => const OnboardScreenOne(),
      },
    );
  }
}
