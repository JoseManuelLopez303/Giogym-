import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'routes.dart';
import './pages/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyDyYSPjW1kmh1l-6U5gWbs-KuoLoDE9k34",
        appId: "1:161939160864:android:2a126a88408a4495dfa145",
        messagingSenderId:
            "161939160864-6vtoulephuto2vpbohonqac8mtad6kr8.apps.googleusercontent.com",
        projectId: "giogym-8822a",
        storageBucket: "giogym-8822a.appspot.com"),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        initialRoute: LoginScreen.id,
        routes: routes);
  }
}
