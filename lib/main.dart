import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oepinion_web/features/dashboard/dashboard.dart';
import 'package:oepinion_web/features/dashboard/dashboard_copy.dart';
import 'package:oepinion_web/features/login/login.dart';

import 'data/firebase_options.dart';

// https://blog.bitrise.io/post/build-and-deploy-flutter-web-app-firebase
// https://stackoverflow.com/questions/67059355/flutter-web-app-is-missing-firebase-json-and-shows-welcome-firebase-hosting-set

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Öpinion Web',
      theme: ThemeData(
          primarySwatch: Colors.red,
          fontFamily: GoogleFonts.inter().fontFamily),
      home: LoginPage(),
    );
  }
}
