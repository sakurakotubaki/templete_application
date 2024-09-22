import 'package:flutter/material.dart';
import 'package:templete_application/feature/router/router.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerConfig: router,
      );
}