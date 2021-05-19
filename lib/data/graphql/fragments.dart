String countryFieldsFragment = '''
fragment countryFieldsFragment on Country {
  code
  name
  emoji
  continent {
    code
    name
  }
  capital
}
''';
