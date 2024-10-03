import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Конвертор Одиниць',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Converter(),
    );
  }
}

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  // Переменные
  String _kilometers = '';
  String _miles = '';
  String _inches = '';
  String _centimeters = '';
  String _acres = '';
  String _hectares = '';
  String _kilograms = '';
  String _pounds = '';
  String _liters = '';
  String _gallons = '';

  // Конвертация километров в мили
  void _convertToMiles() {
    if (_kilometers.isNotEmpty) {
      double km = double.parse(_kilometers);
      setState(() {
        _miles = (km * 0.621371).toStringAsFixed(2);
      });
    }
  }

  // Конвертация миль в километры
  void _convertToKilometers() {
    if (_miles.isNotEmpty) {
      double mi = double.parse(_miles);
      setState(() {
        _kilometers = (mi / 0.621371).toStringAsFixed(2);
      });
    }
  }

  // Конвертация дюймов в см
  void _convertToCentimeters() {
    if (_inches.isNotEmpty) {
      double inches = double.parse(_inches);
      setState(() {
        _centimeters = (inches * 2.54).toStringAsFixed(2);
      });
    }
  }

  // Конвертация см в дюймы
  void _convertToInches() {
    if (_centimeters.isNotEmpty) {
      double cm = double.parse(_centimeters);
      setState(() {
        _inches = (cm / 2.54).toStringAsFixed(2);
      });
    }
  }

  // Конвертация акров в гектары
  void _convertToHectares() {
    if (_acres.isNotEmpty) {
      double acres = double.parse(_acres);
      setState(() {
        _hectares = (acres * 0.404686).toStringAsFixed(2);
      });
    }
  }

  // Конвертация гектаров в акры
  void _convertToAcres() {
    if (_hectares.isNotEmpty) {
      double hectares = double.parse(_hectares);
      setState(() {
        _acres = (hectares / 0.404686).toStringAsFixed(2);
      });
    }
  }

  // Конвертация килограммов в фунты
  void _convertToPounds() {
    if (_kilograms.isNotEmpty) {
      double kg = double.parse(_kilograms);
      setState(() {
        _pounds = (kg * 2.20462).toStringAsFixed(2);
      });
    }
  }

  // Конвертация фунтов в килограммы
  void _convertToKilograms() {
    if (_pounds.isNotEmpty) {
      double lbs = double.parse(_pounds);
      setState(() {
        _kilograms = (lbs / 2.20462).toStringAsFixed(2);
      });
    }
  }

  // Конвертация литров в галлоны
  void _convertToGallons() {
    if (_liters.isNotEmpty) {
      double liters = double.parse(_liters);
      setState(() {
        _gallons = (liters * 0.264172).toStringAsFixed(2);
      });
    }
  }

  // Конвертация галлонов в литры
  void _convertToLiters() {
    if (_gallons.isNotEmpty) {
      double gallons = double.parse(_gallons);
      setState(() {
        _liters = (gallons / 0.264172).toStringAsFixed(2);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Конвертор Одиниць'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Поле для ввода километров
              TextField(
                decoration: InputDecoration(
                  labelText: 'Кілометри',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _kilometers = value;
                    _miles = '';
                  });
                },
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _convertToMiles,
                      child: Text('Конвертувати в Мілі'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Результат (Мілі)',
                        border: OutlineInputBorder(),
                      ),
                      enabled: false,
                      controller: TextEditingController(text: _miles),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Поле для ввода миль
              TextField(
                decoration: InputDecoration(
                  labelText: 'Мілі',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _miles = value;
                    _kilometers = '';
                  });
                },
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _convertToKilometers,
                      child: Text('Конвертувати в Кілометри'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Результат (Кілометри)',
                        border: OutlineInputBorder(),
                      ),
                      enabled: false,
                      controller: TextEditingController(text: _kilometers),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Поле для ввода дюймов
              TextField(
                decoration: InputDecoration(
                  labelText: 'Дюйми',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _inches = value;
                    _centimeters = '';
                  });
                },
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _convertToCentimeters,
                      child: Text('Конвертувати в Сантиметри'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Результат (Сантиметри)',
                        border: OutlineInputBorder(),
                      ),
                      enabled: false,
                      controller: TextEditingController(text: _centimeters),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Поле для ввода сантиметров
              TextField(
                decoration: InputDecoration(
                  labelText: 'Сантиметри',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _centimeters = value;
                    _inches = '';
                  });
                },
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _convertToInches,
                      child: Text('Конвертувати в Дюйми'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Результат (Дюйми)',
                        border: OutlineInputBorder(),
                      ),
                      enabled: false,
                      controller: TextEditingController(text: _inches),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Поле для ввода акров
              TextField(
                decoration: InputDecoration(
                  labelText: 'Акри',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _acres = value;
                    _hectares = '';
                  });
                },
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _convertToHectares,
                      child: Text('Конвертувати в Гектари'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Результат (Гектари)',
                        border: OutlineInputBorder(),
                      ),
                      enabled: false,
                      controller: TextEditingController(text: _hectares),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Поле для ввода гектаров
              TextField(
                decoration: InputDecoration(
                  labelText: 'Гектари',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _hectares = value;
                    _acres = '';
                  });
                },
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _convertToAcres,
                      child: Text('Конвертувати в Акри'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Результат (Акри)',
                        border: OutlineInputBorder(),
                      ),
                      enabled: false,
                      controller: TextEditingController(text: _acres),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Поле для ввода килограммов
              TextField(
                decoration: InputDecoration(
                  labelText: 'Кілограми',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _kilograms = value;
                    _pounds = '';
                  });
                },
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _convertToPounds,
                      child: Text('Конвертувати в Фунти'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Результат (Фунти)',
                        border: OutlineInputBorder(),
                      ),
                      enabled: false,
                      controller: TextEditingController(text: _pounds),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Поле для ввода фунтов
              TextField(
                decoration: InputDecoration(
                  labelText: 'Фунти',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _pounds = value;
                    _kilograms = '';
                  });
                },
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _convertToKilograms,
                      child: Text('Конвертувати в Кілограми'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Результат (Кілограми)',
                        border: OutlineInputBorder(),
                      ),
                      enabled: false,
                      controller: TextEditingController(text: _kilograms),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Поле для ввода литров
              TextField(
                decoration: InputDecoration(
                  labelText: 'Літри',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _liters = value;
                    _gallons = '';
                  });
                },
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _convertToGallons,
                      child: Text('Конвертувати в Галони'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Результат (Галони)',
                        border: OutlineInputBorder(),
                      ),
                      enabled: false,
                      controller: TextEditingController(text: _gallons),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Поле для ввода галлонов
              TextField(
                decoration: InputDecoration(
                  labelText: 'Галони',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _gallons = value;
                    _liters = '';
                  });
                },
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _convertToLiters,
                      child: Text('Конвертувати в Літри'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Результат (Літри)',
                        border: OutlineInputBorder(),
                      ),
                      enabled: false,
                      controller: TextEditingController(text: _liters),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
