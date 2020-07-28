import 'package:flutter/material.dart';
import 'package:worldometer/Repository/repository.dart';
import './../Model/country_model.dart';

class CountrySelector extends StatefulWidget {
  @override
  _CountrySelectorState createState() => _CountrySelectorState();
}

class _CountrySelectorState extends State<CountrySelector> {
  List<CountryModel> _list = new List();
  Repository repository = new Repository();

  @override
  void initState() {
    repository.fetchData("https://www.worldometers.info/coronavirus/");
    _list = CountryModel.getCountries();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose any Country"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_list[index].name),
          );
        },
      ),
    );
  }
}
