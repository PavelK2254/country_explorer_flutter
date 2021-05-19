import 'package:country_explorer/data/model/continent.dart';
import 'package:country_explorer/data/model/country.dart';
import 'package:country_explorer/feature/country_screen/country_screen.dart';
import 'package:country_explorer/feature/search/search_screen.dart';
import 'package:country_explorer/values/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/main_screen_cubit.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Country explorer'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: SearchScreen(),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<MainScreenCubit, MainScreenState>(
        builder: (context, state) {
          switch (state.runtimeType) {
            case MainScreenInitial:
            case MainScreenLoading:
              return const Center(child: CircularProgressIndicator());
            case MainScreenError:
              return Center(
                  child: Text(state.errorMessage,
                      style: Theme.of(context).textTheme.headline6));
            case MainScreenQueryLoaded:
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text('Continent:'),
                        const SizedBox(width: 20),
                        _filterSection(context, state.continents,
                            state.selectedContinentCode),
                      ],
                    ),
                    Expanded(child: _countriesList(state.countries)),
                  ],
                ),
              );
            default:
              return const SizedBox();
          }
        },
      ));

  Widget _filterSection(BuildContext context, List<Continent> continents,
          String selectedContinentCode) =>
      DropdownButton<String>(
          value: selectedContinentCode,
          elevation: 15,
          onChanged: (value) => {
                BlocProvider.of<MainScreenCubit>(context)
                    .getCountriesList(value ?? defaultContinentCode)
              },
          items: continents
              .map((e) =>
                  DropdownMenuItem<String>(value: e.code, child: Text(e.name)))
              .toList());

  Widget _countriesList(List<Country> countries) => ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) =>
            _countryTile(context, countries[index]),
      );

  Widget _countryTile(BuildContext context, Country country) => Card(
        child: ListTile(
          title: Text('${country.emoji} ${country.name}',
              style: Theme.of(context).textTheme.headline6),
          subtitle: Text(country.capital,
              style: Theme.of(context).textTheme.bodyText2),
          onTap: () => _openCountryScreen(context, country),
          trailing: Text(country.continent.code),
        ),
      );

  void _openCountryScreen(BuildContext context, Country country) =>
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CountryScreen()
              ..requestCountryData(context, country.code),
          ));
}
