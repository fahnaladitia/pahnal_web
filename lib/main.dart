import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pahnal_web/ui/cv/cv_page.dart';
import 'package:pahnal_web/ui/portofolio/portofolio_page.dart';

import 'ui/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Pahnal Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      // builder: (context, state) => const HomePage(),
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const HomePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurvedAnimation(
                parent: animation,
                curve: Curves.easeInOutCirc,
                reverseCurve: Curves.easeInOutCirc,
              ),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: '/portofolio',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const PortofolioPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurvedAnimation(
                parent: animation,
                curve: Curves.easeInOutCirc,
                reverseCurve: Curves.easeInOutCirc,
              ),
              child: child,
            );
          },
        );
      },
    ),
    GoRoute(
      path: '/cv',
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const CvPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: CurvedAnimation(
                parent: animation,
                curve: Curves.easeInOutCirc,
                reverseCurve: Curves.easeInOutCirc,
              ),
              child: child,
            );
          },
        );
      },
    ),
  ],
);
