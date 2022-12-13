import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vempraquadra/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:vempraquadra/features/authentication/presentation/pages/first_login_page.dart';
import 'package:vempraquadra/features/authentication/presentation/pages/login_page.dart';
import 'package:vempraquadra/features/authentication/presentation/pages/register_page.dart';
import 'package:vempraquadra/features/feed/presentation/pages/feed_page.dart';

List<Page> onGenerateAppViewPages(
  AuthStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AuthStatus.authenticated:
      return [FeedPage.page()];
    case AuthStatus.unauthenticated:
      return [FirstLoginPage.page()];
  }
}

// class AppRoutes extends StatelessWidget {
//   AppRoutes({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp.router(
  //     routerConfig: _router,
  //     title: 'teste do router',
  //   );
  // }

  // final GoRouter _router = GoRouter(
  //   routes: <GoRoute>[
  //     GoRoute(
  //       path: '/',
  //       builder: (BuildContext context, GoRouterState state) {
  //         return const FirstLoginPage();
  //       },
  //     ),
  //     GoRoute(
  //       path: '/login',
  //       builder: (context, GoRouterState state) {
  //         return const LoginPage();
  //       },
  //     ),
  //     GoRoute(
  //       path: '/register',
  //       builder: (context, GoRouterState state) {
  //         return const RegisterPage();
  //       },
  //     ),
  //     GoRoute(
  //       path: '/feed',
  //       builder: (BuildContext context, GoRouterState state) {
  //         return const FeedPage();
  //       },
  //     ),
  //   ],
  // );
// }
