import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vempraquadra/features/feed/presentation/pages/feed_page.dart';

class AcessProfile extends StatelessWidget {
  const AcessProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image.asset('lib/assets/images/icon.png', height: 150)),
          const SizedBox(height: 25),
          Center(
              child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: Container(
              color: const Color.fromARGB(47, 145, 94, 233),
              child: Image.asset('lib/assets/images/profile_icon.png',
                  height: 150),
            ),
          )),
          const SizedBox(height: 20),
          Text(
            'Acesse o seu perfil',
            style: GoogleFonts.exo(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: const Color(0xff364356),
            ),
          ),
          const SizedBox(height: 25),
          Text(
            'Lá você pode revisar e editar suas preferências a qualquer momento',
            style: GoogleFonts.exo(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color(0xff636D77),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 100),
          OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FeedPage()));
            },
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color(0xffFD5314),
              minimumSize: const Size(257, 49),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
            ),
            child: Text(
              'Encontrar eventos',
              style: GoogleFonts.exo(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
