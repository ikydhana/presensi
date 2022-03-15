import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:presensi/services/services.dart';
import 'package:provider/provider.dart';
import 'package:presensi/common/common.dart';
import 'package:presensi/screens/screens.dart';
import 'package:presensi/utils/utils.dart';
import 'package:presensi/provider/provider.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

void main() => runApp(presensi());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  OneSignal.shared.init(oneSignalAppID, iOSSettings: null);
  OneSignal.shared.setInFocusDisplayType(OSNotificationDisplayType.notification);
  runApp(MyApp());
}

class presensi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseAnalytics analytics = FirebaseAnalytics();
    return StreamProvider.value(
      value: AuthServices.userStream,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => UserProvider()),
          ChangeNotifierProvider(create: (_) => ValidationProvider()),
          ChangeNotifierProvider(create: (_) => PresenceProvider()),
          ChangeNotifierProvider(create: (_) => HistoryProvider()),
        ],
        child: MaterialApp(
          title: "Presensi",
          home: SplashScreen(),
          theme: appTheme,
          routes: appRoute,
          debugShowCheckedModeBanner: false,
          navigatorObservers: [
            FirebaseAnalyticsObserver(analytics: analytics),
          ],
        ),
      ),
    );
  }
}

