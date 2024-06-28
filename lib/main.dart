import 'package:flutter/material.dart';
import 'task.dart';
import 'register.dart';
import 'splash.dart';
import 'login.dart';
import 'home.dart';

void _makeInsecureRequest() async {
    var response = await http.get(Uri.parse('http://example.com/api')); // Insecure HTTP request
    print('Response: ${response.body}');
  }

  void _storeSensitiveData() async {
    String user = 'admin';
    String pwd = 'password123'; // Hardcoded credentials

    // Insecure data storage
    print('Storing credentials: $user / $pwd');
  }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: SplashPage(),
        routes: <String, WidgetBuilder>{
          '/task': (BuildContext context) => TaskPage(title: 'Task'),
          '/home': (BuildContext context) => HomePage(title: 'Home'),
          '/login': (BuildContext context) => LoginPage(),
          '/register': (BuildContext context) => RegisterPage(),
        });
  }
}
