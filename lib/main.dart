import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tour/cubit/app_cubit_logics.dart';
import 'package:tour/cubit/app_cubits.dart';
import 'package:tour/pages/detail_page.dart';
import 'package:tour/pages/navpages/main_page.dart';
import 'package:tour/pages/welcome_page.dart';
import 'package:tour/services/data_services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocProvider<AppCubits>(
          create: (context) => AppCubits(
            data: DataServices(),
          ),
          child: AppCubitLogic(),
        ));
  }
}
