import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vempraquadra/features/authentication/domain/entityes/user_entity.dart';
import 'package:vempraquadra/features/authentication/domain/repository/auth_repository.dart';
import 'package:vempraquadra/features/authentication/presentation/cubit/signup/signup_cubit.dart';
import 'package:vempraquadra/features/authentication/presentation/pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isPasswordVisible = false;

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const RegisterPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignupCubit(context.read<AuthRepository>()),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: BlocListener<SignupCubit, SignupState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('lib/assets/images/icon.png', height: 300),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Nome'),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      BlocBuilder<SignupCubit, SignupState>(
                        buildWhen: ((previous, current) =>
                            previous.username != current.username),
                        builder: (context, state) {
                          return TextFormField(
                            onChanged: (username) {
                              context
                                  .read<SignupCubit>()
                                  .usernameChanged(username);
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xffDADADA),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              label: const Text('Seu nome'),
                              labelStyle:
                                  const TextStyle(color: Color(0xff636D77)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Color(0xffDADADA),
                                  )),
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
                        child: Text('Endereço de e-mail'),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      BlocBuilder<SignupCubit, SignupState>(
                        buildWhen: ((previous, current) =>
                            previous.email != current.email),
                        builder: (context, state) {
                          return TextFormField(
                            onChanged: (email) {
                              context.read<SignupCubit>().emailChanged(email);
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xffDADADA),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
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
                      BlocBuilder<SignupCubit, SignupState>(
                        buildWhen: ((previous, current) =>
                            previous.password != current.password),
                        builder: (context, state) {
                          return TextFormField(
                            onChanged: (password) {
                              context
                                  .read<SignupCubit>()
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
                            obscureText: isPasswordVisible,
                            cursorColor: const Color.fromARGB(221, 85, 84, 84),
                          );
                        },
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                Column(
                  children: [
                    BlocBuilder<SignupCubit, SignupState>(
                      buildWhen: ((previous, current) =>
                          previous.status != current.status),
                      builder: (context, state) {
                        return state.status == SignupStatus.submitting
                            ? const CircularProgressIndicator()
                            : OutlinedButton(
                                onPressed: () {
                                  context
                                      .read<SignupCubit>()
                                      .signupFormSubmitted();
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
                              );
                      },
                    ),
                    const SizedBox(height: 25),
                    GestureDetector(
                      onTap: () =>
                          Navigator.of(context).push<void>(LoginPage.route()),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Você já possui uma conta? ',
                            style: TextStyle(
                              color: Color(0xff686868),
                            ),
                          ),
                          Text(
                            'Entrar',
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
