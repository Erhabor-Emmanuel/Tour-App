import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tour/cubit/app_cubit_states.dart';
import 'package:tour/cubit/app_cubits.dart';
import 'package:tour/pages/home_page.dart';
import 'package:tour/pages/navpages/main_page.dart';
import 'package:tour/pages/welcome_page.dart';

import '../pages/detail_page.dart';

class AppCubitLogic extends StatefulWidget {
  const AppCubitLogic({Key? key}) : super(key: key);

  @override
  _AppCubitLogicState createState() => _AppCubitLogicState();
}

class _AppCubitLogicState extends State<AppCubitLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state) {
          if (state is DetailState) {
            return DetailPage();
          }
          if (state is WelcomeState) {
            return WelcomePage();
          }
          if (state is LoadedState) {
            return MainPage();
          }
          if (state is LoadingState) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
