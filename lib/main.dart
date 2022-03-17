import 'package:flutter/material.dart';
import 'package:presensi/screens/login_screen.dart';
import 'package:presensi/screens/main_screen.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Presensi());
}

class Presensi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return
        MaterialApp(
          title: "Presensi",
          home: MainScreen(),
    );
  }
}

