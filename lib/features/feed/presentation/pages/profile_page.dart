import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vempraquadra/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:vempraquadra/features/authentication/presentation/cubit/signup/signup_cubit.dart';
import 'package:vempraquadra/features/feed/presentation/cubit/favorti_list_cubit.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Perfil',
              style: GoogleFonts.exo(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: const Color(0xff364356),
              ),
            ),
            const SizedBox(height: 5),
            Center(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Container(
                  color: const Color.fromARGB(47, 145, 94, 233),
                  child: Image.asset(
                    'lib/assets/images/profile_icon.png',
                    height: 180,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            BlocBuilder<SignupCubit, SignupState>(
              builder: (context, state) {
                return Text(
                  state.username!,
                  style: GoogleFonts.exo(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff364356),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            Text(
              'Nivel 1, pato do time',
              style: GoogleFonts.exo(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: const Color(0xff636D77),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 120,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffFD5314),
              ),
              child: const Center(
                  child: Text(
                '0 amigos',
                style: TextStyle(color: Colors.white),
              )),
            ),
            const SizedBox(height: 10),
            Text(
              'Esportes preferidos',
              style: GoogleFonts.exo(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0xff636D77),
              ),
            ),
            BlocBuilder<FavortiListCubit, FavortiListState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < state.favorSports.length; i++)
                      Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffE6E6E6),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Text(
                            state.favorSports[i].name,
                            style: const TextStyle(color: Color(0xff636D77)),
                          )),
                        ),
                      ),
                  ],
                );
              },
            ),
            Text(
              'Criador de eventos',
              style: GoogleFonts.exo(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0xff636D77),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 120,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffE6E6E6),
              ),
              child: const Center(
                  child: Text(
                '0 eventos ativos',
                style: TextStyle(color: Color(0xff636D77)),
              )),
            ),
            const SizedBox(height: 10),
            Text(
              'Regiões de interesse',
              style: GoogleFonts.exo(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0xff636D77),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 120,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffE6E6E6),
              ),
              child: const Center(
                  child: Text(
                'Centro',
                style: TextStyle(color: Color(0xff636D77)),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
