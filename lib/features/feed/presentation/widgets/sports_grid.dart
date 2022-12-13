import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vempraquadra/features/feed/presentation/cubit/select_sports_cubit.dart';

class SportsGrid extends StatefulWidget {
  const SportsGrid({super.key});

  @override
  State<SportsGrid> createState() => _SportsGridState();
}

class _SportsGridState extends State<SportsGrid> {
  @override
  Widget build(BuildContext context) {
    Color cor = Color(0xffE6E6E6);
    return BlocProvider(
      create: (context) => SelectSportsCubit(),
      child: Center(child: BlocBuilder<SelectSportsCubit, bool>(
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      context.read<SelectSportsCubit>().selectSport();
                    },
                    child: Container(
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: state ? Color(0xffFD5314) : Color(0xffE6E6E6),
                      ),
                      child: Center(
                          child: Text(
                        'Vôlei',
                        style: TextStyle(
                            color: state ? Colors.white : Colors.black),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.read<SelectSportsCubit>().selectSport();
                    },
                    child: Container(
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: state ? Color(0xffFD5314) : Color(0xffE6E6E6),
                      ),
                      child: Center(
                          child: Text(
                        'Vôlei',
                        style: TextStyle(
                            color: state ? Colors.white : Colors.black),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.read<SelectSportsCubit>().selectSport();
                    },
                    child: Container(
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: state ? Color(0xffFD5314) : Color(0xffE6E6E6),
                      ),
                      child: Center(
                          child: Text(
                        'Tênis',
                        style: TextStyle(
                            color: state ? Colors.white : Colors.black),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.read<SelectSportsCubit>().selectSport();
                    },
                    child: Container(
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: state ? Color(0xffFD5314) : Color(0xffE6E6E6),
                      ),
                      child: Center(
                          child: Text(
                        'Fut-Vôlei',
                        style: TextStyle(
                            color: state ? Colors.white : Colors.black),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.read<SelectSportsCubit>().selectSport();
                    },
                    child: Container(
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: state ? Color(0xffFD5314) : Color(0xffE6E6E6),
                      ),
                      child: Center(
                          child: Text(
                        'Ciclismo',
                        style: TextStyle(
                            color: state ? Colors.white : Colors.black),
                      )),
                    ),
                  ),
                ],
              ),
              Column(
                children: [],
              ),
            ],
          );
        },
      )),
    );
  }

  List<String> leftSports = [
    'Vôlei',
    'Tênis',
    'Fut-Vôlei',
    'Ciclismo',
    'Handebol',
  ];
}
