import 'package:flutter/material.dart';
import 'package:sugar_petals/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Sugar Petals',
        theme: ThemeData(
          primaryColor: Color(0xFFE91E63), 
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color(0xFFE91E63),
            secondary: Color(0xFFEC407A),
          ),
          useMaterial3: true,
        ),
        home: const LoginPage(),
      )
    );
  }
}