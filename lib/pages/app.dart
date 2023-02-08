import 'package:flutter/material.dart';
import '../shared/shared.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: Routers().route,
      initialRoute: Routers.home,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black12,
          selectionColor: Colors.black12,
        ),
        primarySwatch: Colors.blue,
      ),
    );
  }
}
