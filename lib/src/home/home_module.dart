import 'package:nubank_layout/src/home/config/config_bloc.dart';
import 'package:nubank_layout/src/home/card_list/card3/card3_bloc.dart';
import 'package:nubank_layout/src/home/card_list/card1/card1_bloc.dart';
import 'package:nubank_layout/src/home/card_list/card/card_bloc.dart';
import 'package:nubank_layout/src/home/card_list/card_list_bloc.dart';
import 'package:nubank_layout/src/home/bottom_list/bottom_list_bloc.dart';
import 'package:nubank_layout/src/home/logo/logo_bloc.dart';
import 'package:nubank_layout/src/home/home_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:nubank_layout/src/home/home_page.dart';

class HomeModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => ConfigBloc()),
        Bloc((i) => Card3Bloc()),
        Bloc((i) => Card1Bloc()),
        Bloc((i) => CardBloc()),
        Bloc((i) => CardListBloc()),
        Bloc((i) => BottomListBloc()),
        Bloc((i) => LogoBloc()),
        Bloc((i) => HomeBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => HomePage();

  static Inject get to => Inject<HomeModule>.of();
}
