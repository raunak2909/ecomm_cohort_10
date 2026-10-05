import 'package:ecomm_template/data/remote/helper/api_helper.dart';
import 'package:ecomm_template/ui/user_on_boarding/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'domain/constants/app_routes.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => UserBloc(apiHelper: ApiHelper()),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      initialRoute: AppRoutes.PAGE_SPLASH,
      routes: AppRoutes.getRoutes(),
    );
  }
}
