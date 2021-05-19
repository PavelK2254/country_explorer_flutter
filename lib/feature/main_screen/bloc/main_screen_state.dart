part of 'main_screen_cubit.dart';

abstract class MainScreenState extends Equatable {
  final String errorMessage;
  final List<Country> countries;
  final List<Continent> continents;
  final String selectedContinentCode;

  const MainScreenState(this.errorMessage, this.countries, this.continents,{this.selectedContinentCode = defaultContinentCode});
}

class MainScreenInitial extends MainScreenState {
  MainScreenInitial() : super('', List.empty(),List.empty());

  @override
  List<Object> get props => [];
}

class MainScreenError extends MainScreenState {
  MainScreenError(String errorMessage) : super(errorMessage, List.empty(),List.empty());

  @override
  List<Object?> get props => [errorMessage];
}

class MainScreenLoading extends MainScreenState {
  MainScreenLoading() : super('', List.empty(),List.empty());

  @override
  List<Object?> get props => [];
}

class MainScreenQueryLoaded extends MainScreenState {
  const MainScreenQueryLoaded(List<Country> countries,List<Continent> continents,{String selectedContinentCode = defaultContinentCode}) : super('', countries,continents,selectedContinentCode: selectedContinentCode);

  @override
  List<Object?> get props => [countries];
}
