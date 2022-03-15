import 'package:flutter/material.dart';
// import 'package:presensi/screens/screens.dart';




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
          home: Presensi(),
    );
  }
}

