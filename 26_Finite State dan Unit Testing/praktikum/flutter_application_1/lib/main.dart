import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/menu_view_model.dart';
import 'package:flutter_application_1/screens/homepage/homepage.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MenuViewModel(),
        )
      ],
      child: const MaterialApp(
        home: Homepage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
