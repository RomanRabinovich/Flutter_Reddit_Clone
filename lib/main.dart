import 'package:flutter/material.dart';
import 'package:flutter_application_4/features/auth/screen/login_screen.dart';
import 'package:flutter_application_4/theme/pallete.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reddit Tutorial',
      theme: Pallete.darkModeAppTheme,
      home: const LoginScreen(),
    );
  }
}
