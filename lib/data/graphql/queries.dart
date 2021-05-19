import 'fragments.dart';

String getCountries = '''
  $countryFieldsFragment

query GetCountries() {
  countries: countries {
    ...countryFieldsFragment
    }
 }
''';

String getCountry(String code) => '''
query GetCountry(){
  country(code: "$code"){
    code
    name
    native
    phone
    capital
    continent{
     code
     name
    }
    currency
    emoji
    languages{
      code
      name
      native
      rtl
    }
  }
}
''';

String getContinents = '''
query getContinents {
  continents{
    code,
    name,
  }
}
''';

String getCountriesFromContinent(String code) => '''
  $countryFieldsFragment

query getContinent {
  continent(code: "$code") {
    code
    name
    countries: countries {
      ...countryFieldsFragment
    }
  }
}
''';
