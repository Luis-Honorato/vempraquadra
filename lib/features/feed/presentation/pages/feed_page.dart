import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vempraquadra/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:vempraquadra/features/authentication/presentation/cubit/signup/signup_cubit.dart';
import 'package:vempraquadra/features/feed/presentation/pages/profile_page.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: FeedPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Column(
          children: [
            BlocBuilder<SignupCubit, SignupState>(builder: (context, state) {
              return Text(
                'Fala, ${state.username!}',
                style: GoogleFonts.exo(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff364356),
                ),
              );
            }),
            Text(
              'Nivel 1, pato do time',
              style: GoogleFonts.exo(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: const Color(0xff636D77),
              ),
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Container(
                  color: Colors.red,
                  child: Image.asset(
                    'lib/assets/images/profile_icon.png',
                    height: 180,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                'lib/assets/images/feed.png',
              ),
            ),
            Image.asset(
              'lib/assets/images/appbar.png',
            ),
          ],
        ),
      ),
    );
  }
}
