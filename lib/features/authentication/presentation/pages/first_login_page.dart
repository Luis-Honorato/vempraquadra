import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vempraquadra/features/authentication/presentation/pages/register_page.dart';

class FirstLoginPage extends StatelessWidget {
  const FirstLoginPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: FirstLoginPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('lib/assets/images/icon.png'),
          Text(
            'Encontre jogos ao seu redor',
            style: GoogleFonts.exo(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: const Color(0xff282828),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Cadastre-se para encontrar recomendações exclusivas',
              style: GoogleFonts.exo(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: const Color(0xff636D77),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterPage()));
            },
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color(0xffFD5314),
              minimumSize: const Size(257, 49),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
            ),
            child: Text(
              'Cadastre-se',
              style: GoogleFonts.exo(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
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
          const SizedBox(),
          const SizedBox()
        ],
      ),
    );
  }
}
