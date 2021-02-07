import 'dart:convert' show json;

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {
    loadData();
  }
  
  loadData() {
    rootBundle.loadString('data/menu_opts.json').then((data) {
      Map dataMap = json.decode(data);
      options = dataMap['routes'];
    });
  }
}

// solo va tener una instancia
final menuProvider = new _MenuProvider();
