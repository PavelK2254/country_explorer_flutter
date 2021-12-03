import 'package:country_explorer/data/model/country.dart';
import 'package:country_explorer/feature/country_screen/country_screen.dart';
import 'package:country_explorer/feature/main_screen/bloc/main_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
          final bloc = BlocProvider.of<MainScreenCubit>(context);
          bloc.buildSearchResults(query);
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          final bloc = BlocProvider.of<MainScreenCubit>(context);
          bloc.buildSearchResults('');
          close(context, null);
        },
      );

  @override
  Widget buildResults(BuildContext context) {
    final bloc = BlocProvider.of<MainScreenCubit>(context);
    return ListView(
      children: bloc.state.countries
          .map(
            (e) => ListTile(
              title: Text(e.name),
            ),
          )
          .toList(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final bloc = BlocProvider.of<MainScreenCubit>(context);
    bloc.buildSearchResults(query);
    return ListView(
      children: bloc.state.countries
          .map(
            (country) => ListTile(
              title: Text(country.name),
              onTap: () => _openCountryScreen(context, country),
            ),
          )
          .toList(),
    );
  }

  void _openCountryScreen(BuildContext context, Country country) =>
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              const CountryScreen()..requestCountryData(context, country.code),
        ),
      );
}
