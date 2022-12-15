import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vempraquadra/features/feed/presentation/pages/location_term_page.dart';
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              color: const Color(0xffF9F9F9),
              child: Column(
                children: [
                  Text(
                    'Selecione os esportes que combinam com você',
                    style: GoogleFonts.exo(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff636D77),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SportsGrid(),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
          const SizedBox(height: 50),
          OutlinedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LocationTerm()));
            },
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color(0xffFD5314),
              minimumSize: const Size(257, 49),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
            ),
            child: Text(
              'Próxima etapa',
              style: GoogleFonts.exo(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {},
            child: Text(
              'Pular',
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
