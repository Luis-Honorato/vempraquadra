import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vempraquadra/features/authentication/domain/repository/auth_repository.dart';
import 'package:vempraquadra/features/authentication/presentation/cubit/login/login_cubit.dart';
import 'package:vempraquadra/features/authentication/presentation/pages/register_page.dart';
import 'package:vempraquadra/features/feed/presentation/pages/favorite_sports_page.dart';
import 'package:vempraquadra/features/feed/presentation/pages/feed_page.dart';

class LoginPage extends StatefulWidget {
  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginPage());
  }

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool isPasswordVisible = false;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(context.read<AuthRepository>()),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: BlocListener<LoginCubit, LoginState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('lib/assets/images/icon.png', height: 300),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Endereço de e-mail'),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      BlocBuilder<LoginCubit, LoginState>(
                        buildWhen: (previous, current) =>
                            previous.email != current.email,
                        builder: (context, state) {
                          return TextFormField(
                            onChanged: (email) {
                              context.read<LoginCubit>().emailChanged(email);
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xffDADADA),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              label: const Text('nome@exemplo.com'),
                              labelStyle:
                                  const TextStyle(color: Color(0xff636D77)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color(0xffDADADA),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(221, 85, 84, 84),
                                ),
                              ),
                            ),
                            cursorColor: const Color.fromARGB(221, 85, 84, 84),
                          );
                        },
                      ),
                      const SizedBox(height: 15),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Senha'),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      BlocBuilder<LoginCubit, LoginState>(
                        buildWhen: (previous, current) =>
                            previous.password != current.password,
                        builder: (context, state) {
                          return TextFormField(
                            onChanged: (password) {
                              context
                                  .read<LoginCubit>()
                                  .passwordChanged(password);
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xffDADADA),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              label: const Text('*********'),
                              labelStyle:
                                  const TextStyle(color: Color(0xff636D77)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color(0xffDADADA),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(221, 85, 84, 84),
                                ),
                              ),
                              suffixIcon: IconButton(
                                icon: isPasswordVisible
                                    ? const Icon(
                                        Icons.visibility_off,
                                        color: Color(0xff636D77),
                                      )
                                    : const Icon(
                                        Icons.visibility,
                                        color: Color(0xff636D77),
                                      ),
                                onPressed: () => setState(
                                  () => isPasswordVisible = !isPasswordVisible,
                                ),
                              ),
                            ),
                            obscureText: !isPasswordVisible,
                            cursorColor: const Color.fromARGB(221, 85, 84, 84),
                          );
                        },
                      ),
                      const SizedBox(height: 70),
                    ],
                  ),
                ),
                Column(
                  children: [
                    BlocBuilder<LoginCubit, LoginState>(
                      buildWhen: (previous, current) =>
                          previous.status != current.status,
                      builder: (context, state) {
                        return state.status == LoginStatus.submitting
                            ? const CircularProgressIndicator()
                            : OutlinedButton(
                                onPressed: () {
                                  context
                                      .read<LoginCubit>()
                                      .logInWithCredentials();
                                  state.status == LoginStatus.success
                                      ? null
                                      : Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FavoriteSportsPage()));
                                },
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: const Color(0xffFD5314),
                                  minimumSize: const Size(257, 49),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13),
                                  ),
                                ),
                                child: Text(
                                  'Entrar',
                                  style: GoogleFonts.exo(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              );
                      },
                    ),
                    const SizedBox(height: 25),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage())),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'É novo por aqui? ',
                            style: TextStyle(
                              color: Color(0xff686868),
                            ),
                          ),
                          Text(
                            'Cadastrar',
                            style: TextStyle(
                              color: Color(0xffFD5314),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
