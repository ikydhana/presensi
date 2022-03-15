part of 'screens.dart';

class Wrapper extends StatelessWidget {
  static String routeName = '/wrapper';

  @override
  Widget build(BuildContext context) {
    var firebaseUser = null;

    if (firebaseUser == null) {
      return Scaffold(
        body: LoginScreen(),
      );
    }
    else {


      return Scaffold(
        //body: MainScreen(),
      );
    }
  }
}
