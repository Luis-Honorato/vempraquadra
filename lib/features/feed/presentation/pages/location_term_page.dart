import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vempraquadra/features/feed/presentation/pages/acess_profile_page.dart';
import 'package:vempraquadra/features/feed/presentation/pages/favorite_sports_page.dart';

class LocationTerm extends StatelessWidget {
  const LocationTerm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image.asset('lib/assets/images/icon.png', height: 150)),
          Text(
            'Para concluir seu cadastro',
            style: GoogleFonts.exo(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: const Color(0xff364356),
            ),
          ),
          const SizedBox(height: 25),
          Text(
            'Precisamos coletar dados sobre o local onde você mora para exibir opções personalizadas do que acontece por perto de você',
            style: GoogleFonts.exo(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color(0xff636D77),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 300),
          OutlinedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AcessProfile()));
            },
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color(0xffFD5314),
              minimumSize: const Size(257, 49),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
            ),
            child: Text(
              'Eu concordo',
              style: GoogleFonts.exo(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FavoriteSportsPage()));
            },
            child: Text(
              'Voltar',
              style: GoogleFonts.exo(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: const Color(0xffFD5314),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
