part of 'country_screen_cubit.dart';

abstract class CountryScreenState extends Equatable {
  const CountryScreenState();
}

class CountryScreenInitial extends CountryScreenState {
  @override
  List<Object> get props => [];
}

class CountryScreenLoading extends CountryScreenState {
  @override
  List<Object> get props => [];
}

class CountryScreenError extends CountryScreenState {
  final String errorMessage;

  const CountryScreenError(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}

class CountryLoadedState extends CountryScreenState {
  final Country country;

  const CountryLoadedState(this.country);

  @override
  List<Object?> get props => [country];
}
