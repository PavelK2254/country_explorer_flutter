import 'package:country_explorer/data/api/graphql_repository.dart';
import 'package:country_explorer/feature/country_screen/bloc/country_screen_cubit.dart';
import 'package:country_explorer/feature/main_screen/bloc/main_screen_cubit.dart';
import 'package:country_explorer/feature/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  runApp(RepositoryProvider(
    create: (context) => GraphQLRepository(),
    child: MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MainScreenCubit(
            RepositoryProvider.of(context),
          )..getData(),
        ),
        BlocProvider(
          create: (context) => CountryScreenCubit(
            RepositoryProvider.of(context),
          ),
        )
      ],
      child: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Country explorer",
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: MainScreen(),
    );
  }
}
