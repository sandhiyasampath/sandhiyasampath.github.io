import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sandhiya_portfolio/state/app_state.dart';
import 'pages/my_portfolio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sandhiya_Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        canvasColor: Colors.purple.shade50,
        useMaterial3: true,
        fontFamily: "custom",
      ),
      home: ChangeNotifierProvider(
          create: (context) {
            return AppState();
          },
          child: MyPortfolio()),
    );
  }
}
