import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vempraquadra/features/feed/domain/entityes/sports_entity.dart';
import 'package:vempraquadra/features/feed/presentation/cubit/favorti_list_cubit.dart';

import '../../../authentication/domain/entityes/user_entity.dart';

class SportsGrid extends StatefulWidget {
  const SportsGrid({super.key});

  @override
  State<SportsGrid> createState() => _SportsGridState();
}

List<Sports> pickedSports = [];
final Cubit favorListCubit = FavortiListCubit();

class _SportsGridState extends State<SportsGrid> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              for (int i = 0; i < leftSports.length; i++) ...[
                leftSportsWidget(
                    index: i,
                    name: leftSports[i].name,
                    isSelected: leftSports[i].isSelected),
                const SizedBox(
                  height: 10,
                )
              ]
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (int i = 0; i < rigthSports.length; i++) ...[
                rigthSportsWidget(
                    index: i,
                    name: rigthSports[i].name,
                    isSelected: rigthSports[i].isSelected),
                const SizedBox(
                  height: 10,
                )
              ]
            ],
          ),
        ],
      ),
    );
  }

  List<Sports> leftSports = [
    Sports(name: 'Vôlei', isSelected: false),
    Sports(name: 'Tênis', isSelected: false),
    Sports(name: 'Fut-Vôlei', isSelected: false),
    Sports(name: 'Ciclismo', isSelected: false),
    Sports(name: 'Handebol', isSelected: false),
  ];

  List<Sports> rigthSports = [
    Sports(name: 'Basquete', isSelected: false),
    Sports(name: 'Futsal', isSelected: false),
    Sports(name: 'Futebol de Campo', isSelected: false),
    Sports(name: 'Queimada', isSelected: false),
    Sports(name: 'Vôlei de Praia', isSelected: false),
  ];

  Widget leftSportsWidget(
          {required String name,
          required bool isSelected,
          required int index}) =>
      GestureDetector(
        child: Container(
          width: 120,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isSelected ? Color(0xffFD5314) : Color(0xffE6E6E6),
          ),
          child: Center(
            child: Text(
              name,
              style: TextStyle(color: isSelected ? Colors.white : Colors.black),
            ),
          ),
        ),
        onTap: () {
          BlocProvider.of<FavortiListCubit>(context)
              .addFavoriteSport(Sports(name: name, isSelected: true));

          setState(() {
            leftSports[index].isSelected = !leftSports[index].isSelected;
            if (leftSports[index].isSelected == true) {
              pickedSports.add(Sports(name: name, isSelected: true));
            } else if (leftSports[index].isSelected == false) {
              pickedSports.removeWhere(
                  (element) => element.name == leftSports[index].name);
            }
          });
        },
      );
  Widget rigthSportsWidget(
          {required String name,
          required bool isSelected,
          required int index}) =>
      GestureDetector(
        child: Container(
          width: 120,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isSelected ? Color(0xffFD5314) : Color(0xffE6E6E6),
          ),
          child: Center(
              child: Text(
            name,
            style: TextStyle(color: isSelected ? Colors.white : Colors.black),
          )),
        ),
        onTap: () {
          context
              .read<FavortiListCubit>()
              .addFavoriteSport(Sports(name: name, isSelected: true));

          setState(() {
            rigthSports[index].isSelected = !rigthSports[index].isSelected;
            if (rigthSports[index].isSelected == true) {
              pickedSports.add(Sports(name: name, isSelected: true));
            } else if (rigthSports[index].isSelected == false) {
              pickedSports.removeWhere(
                  (element) => element.name == rigthSports[index].name);
            }
          });
        },
      );
}
