import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vempraquadra/features/feed/presentation/widgets/sports_grid.dart';

class FavoriteSportsPage extends StatelessWidget {
  const FavoriteSportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image.asset('lib/assets/images/icon.png', height: 150)),
          Text(
            'O que Você gosta de jogar?',
            style: GoogleFonts.exo(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: const Color(0xff364356),
            ),
          ),
          const SizedBox(height: 25),
          Text(
            'Selecione os esportes que combinam com você',
            style: GoogleFonts.exo(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: const Color(0xff636D77),
            ),
          ),
          SportsGrid(),
        ],
      ),
    );
  }
}
