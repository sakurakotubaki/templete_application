// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'router.g.dart';

// final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();

// @riverpod
// GoRouter router(RouterRef ref) {
// return GoRouter(
//     debugLogDiagnostics: true,
//     routes: $appRoutes,
//     initialLocation: '/login',
//     redirect: (context, state) {
//       const bool isLoggedIn = false;
//       if(!isLoggedIn) return const LoginRouteData().location;
//     },
//   );
//  }


// @TypedGoRoute<LoginRouteData>(path: '/login')
// class LoginRouteData extends GoRouteData {
//   const LoginRouteData();

//   @override
//   Widget build(BuildContext context, GoRouterState state) {
//     return const LoginScreen();
//   }
// }

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Login')),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text('Login'),
//           onPressed: () => context.go('/home'),
//         ),
//       ),
//     );
//   }
// }

// @TypedShellRoute<MyShellRouteData>(
//   routes: <TypedRoute<RouteData>>[
//     TypedGoRoute<HomeRouteData>(path: '/home'),
//     TypedGoRoute<SettingsRouteData>(path: '/settings'),
//   ],
// )
// class MyShellRouteData extends ShellRouteData {
//   const MyShellRouteData();

//   @override
//   Widget builder(BuildContext context, GoRouterState state, Widget child) {
//     return ScaffoldWithNavBar(child: child);
//   }

//   static final GlobalKey<NavigatorState> $navigatorKey = _shellNavigatorKey;
// }

// class HomeRouteData extends GoRouteData {
//   const HomeRouteData();

//   @override
//   Widget build(BuildContext context, GoRouterState state) {
//     return const HomeScreen();
//   }
// }

// class SettingsRouteData extends GoRouteData {
//   const SettingsRouteData();

//   @override
//   Widget build(BuildContext context, GoRouterState state) {
//     return const SettingsScreen();
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Home')),
//       body: const Center(child: Text('Home Screen')),
//     );
//   }
// }

// class SettingsScreen extends StatelessWidget {
//   const SettingsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Settings')),
//       body: const Center(child: Text('Settings Screen')),
//     );
//   }
// }

// class ScaffoldWithNavBar extends StatelessWidget {
//   const ScaffoldWithNavBar({
//     required this.child,
//     super.key,
//   });

//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: child,
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
//         ],
//         currentIndex: _calculateSelectedIndex(context),
//         onTap: (int idx) => _onItemTapped(idx, context),
//       ),
//     );
//   }

//   static int _calculateSelectedIndex(BuildContext context) {
//     final String location = GoRouterState.of(context).matchedLocation;
//     if (location.startsWith('/home')) {
//       return 0;
//     }
//     if (location.startsWith('/settings')) {
//       return 1;
//     }
//     return 0;
//   }

//   void _onItemTapped(int index, BuildContext context) {
//     switch (index) {
//       case 0:
//         GoRouter.of(context).go('/home');
//         break;
//       case 1:
//         GoRouter.of(context).go('/settings');
//         break;
//     }
//   }