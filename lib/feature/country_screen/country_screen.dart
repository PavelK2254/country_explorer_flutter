import 'package:country_explorer/data/model/country.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/country_screen_cubit.dart';

class CountryScreen extends StatelessWidget {
  const CountryScreen();

  void requestCountryData(BuildContext context, String countryCode) {
    BlocProvider.of<CountryScreenCubit>(context)
        .listenToQueryEvents(countryCode);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Country details'),
        ),
        body: BlocBuilder<CountryScreenCubit, CountryScreenState>(
          builder: (context, state) => SizedBox(
            width: double.infinity,
            child: state is CountryLoadedState
                ? _countryCard(context, state.country)
                : _errorAndLoadingWidget(state),
          ),
        ),
      );

  Widget _errorAndLoadingWidget(CountryScreenState state) {
    if (state is CountryScreenError) {
      return Center(child: Text(state.errorMessage));
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }

  Widget _countryCard(BuildContext context, Country country) => Card(
        margin: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                    child: Center(
                        child: Text('${country.name} ${country.emoji}',
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: Colors.black)))),
                _textWIthIcon(context, 'Country code:   ${country.code}',
                    Icons.perm_identity),
                _textWIthIcon(context, 'Continent:   ${country.continent.name}',
                    Icons.language),
                _textWIthIcon(context, 'Capital:   ${country.capital}',
                    Icons.account_balance),
                _textWIthIcon(context, 'Currency:  ${country.currency}',
                    Icons.monetization_on),
                _textWIthIcon(
                    context, 'Phone code:  +${country.phone}', Icons.phone),
                if (country.languages.isNotEmpty)
                  _textWIthIcon(
                      context,
                      'Languages:   ${country.languages.map((e) => e.native).join("  , ")}',
                      Icons.speaker_notes)
                else
                  const SizedBox(),
              ]),
        ),
      );

  Widget _textWIthIcon(BuildContext context, String text, IconData iconData) =>
      ListTile(
        title: Text(text, style: Theme.of(context).textTheme.subtitle2),
        leading: Icon(
          iconData,
          color: Theme.of(context).accentColor,
        ),
      );
}
