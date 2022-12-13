import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vempraquadra/features/authentication/presentation/bloc/auth_bloc.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: FeedPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () {
            context.read<AuthBloc>().add(AuthLogoutRequested());
          },
        ),
      ),
    );
  }
}
