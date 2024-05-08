import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tips_flutter/first_page.dart';
import 'package:tips_flutter/home_page.dart';
import 'package:tips_flutter/second/second_page.dart';
GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>(debugLabel: 'root');
final routerConfig = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: '/HomePage',
  //navigatorKey: key,
  routes: [
    GoRoute(
      path: '/HomePage',
      name: 'Home_Page',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/FirstPage',
      name: 'First_Page',
      builder: (context, state) {

        return FirstPage(name: state.pathParameters['name']);}
    ),
    GoRoute(
      path: '/SecondPage',
      name: 'Second_Page',
      builder: (context, state) => SecondPage(),
    ),

  ],
);
/*
GoRoute(
  path: '/users/:userId',
  builder: (context, state) => const UserScreen(),
),

GoRoute(
  path: '/users/:userId',
  builder: (context, state) => const UserScreen(id: state.pathParameters['userId']),
),


Navigator.of(context).pushNamed на context.go().
 */