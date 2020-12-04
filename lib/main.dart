import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class CustomContainer {
  CustomContainer({this.id, this.color = Colors.white, this.isEnabled = true});

  int id;
  Color color;
  bool isEnabled;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  List<CustomContainer> _list;

  List<int> _player1;
  List<int> _player2;
  int _activePlayer = 1;
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    _list = doInit();
  }

  void playGame(CustomContainer square) {
    setState(() {
      switch (_activePlayer) {
        case 1:
          square.color = Colors.red;
          _player1.add(square.id);
          print(square.id);
          _activePlayer = 2;
          break;
        case 2:
          square.color = Colors.green;
          _player2.add(square.id);
          _activePlayer = 1;
          break;
      }
      square.isEnabled = false;
      checkWinner();
      if (_list
          .every((CustomContainer element) => element.color != Colors.white)) {
        _isVisible = true;
        _activePlayer = 1;
      }
    });
  }

  void checkWinner() {
    if (_player1.contains(1) && _player1.contains(2) && _player1.contains(3)) {
      _isVisible = true;
      CustomContainer button;
      _activePlayer = 1;
      for (button in _list) {
        button.isEnabled = false;
        if (button.id == 1 || button.id == 2 || button.id == 3)
          button.color = Colors.red;
        else
          button.color = Colors.white;
      }
    }
    if (_player1.contains(4) && _player1.contains(5) && _player1.contains(6)) {
      _isVisible = true;
      _activePlayer = 1;
      CustomContainer button;
      for (button in _list) {
        button.isEnabled = false;
        if (button.id == 4 || button.id == 5 || button.id == 6)
          button.color = Colors.red;
        else
          button.color = Colors.white;
      }
    }
    if (_player1.contains(7) && _player1.contains(8) && _player1.contains(9)) {
      _isVisible = true;
      CustomContainer button;
      _activePlayer = 1;
      for (button in _list) {
        button.isEnabled = false;
        if (button.id == 7 || button.id == 8 || button.id == 9)
          button.color = Colors.red;
        else
          button.color = Colors.white;
      }
    }
    if (_player1.contains(1) && _player1.contains(4) && _player1.contains(7)) {
      _isVisible = true;
      CustomContainer button;
      _activePlayer = 1;
      for (button in _list) {
        button.isEnabled = false;
        if (button.id == 1 || button.id == 4 || button.id == 7)
          button.color = Colors.red;
        else
          button.color = Colors.white;
      }
    }
    if (_player1.contains(2) && _player1.contains(5) && _player1.contains(8)) {
      _isVisible = true;
      _activePlayer = 1;
      CustomContainer button;
      for (button in _list) {
        button.isEnabled = false;
        if (button.id == 2 || button.id == 5 || button.id == 8)
          button.color = Colors.red;
        else
          button.color = Colors.white;
      }
    }
    if (_player1.contains(3) && _player1.contains(6) && _player1.contains(9)) {
      _isVisible = true;
      _activePlayer = 1;
      CustomContainer button;
      for (button in _list) {
        button.isEnabled = false;
        if (button.id == 3 || button.id == 6 || button.id == 9)
          button.color = Colors.red;
        else
          button.color = Colors.white;
      }
    }
    if (_player1.contains(1) && _player1.contains(5) && _player1.contains(9)) {
      _isVisible = true;
      _activePlayer = 1;
      CustomContainer button;
      for (button in _list) {
        button.isEnabled = false;
        if (button.id == 1 || button.id == 5 || button.id == 9)
          button.color = Colors.red;
        else
          button.color = Colors.white;
      }
    }
    if (_player1.contains(3) && _player1.contains(5) && _player1.contains(7)) {
      _isVisible = true;
      _activePlayer = 1;
      CustomContainer button;
      for (button in _list) {
        button.isEnabled = false;
        if (button.id == 3 || button.id == 5 || button.id == 7)
          button.color = Colors.red;
        else
          button.color = Colors.white;
      }
    }
    if (_player2.contains(1) && _player2.contains(2) && _player2.contains(3)) {
      _isVisible = true;
      _activePlayer = 1;
      CustomContainer button;
      for (button in _list) {
        button.isEnabled = false;
        if (button.id == 1 || button.id == 2 || button.id == 3)
          button.color = Colors.green;
        else
          button.color = Colors.white;
      }
    }
    if (_player2.contains(4) && _player2.contains(5) && _player2.contains(6)) {
      _isVisible = true;
      _activePlayer = 1;
      CustomContainer button;
      for (button in _list) {
        button.isEnabled = false;
        if (button.id == 4 || button.id == 5 || button.id == 6)
          button.color = Colors.green;
        else
          button.color = Colors.white;
      }
    }
    if (_player2.contains(7) && _player2.contains(8) && _player2.contains(9)) {
      _isVisible = true;
      _activePlayer = 1;
      CustomContainer button;
      for (button in _list) {
        button.isEnabled = false;
        if (button.id == 7 || button.id == 8 || button.id == 9)
          button.color = Colors.green;
        else
          button.color = Colors.white;
      }
    }
    if (_player2.contains(1) && _player2.contains(4) && _player2.contains(7)) {
      _isVisible = true;
      _activePlayer = 1;
      CustomContainer button;
      for (button in _list) {
        button.isEnabled = false;
        if (button.id == 1 || button.id == 4 || button.id == 7)
          button.color = Colors.green;
        else
          button.color = Colors.white;
      }
    }
    if (_player2.contains(2) && _player2.contains(5) && _player2.contains(8)) {
      _isVisible = true;
      _activePlayer = 1;
      CustomContainer button;
      for (button in _list) {
        button.isEnabled = false;
        if (button.id == 2 || button.id == 5 || button.id == 8)
          button.color = Colors.green;
        else
          button.color = Colors.white;
      }
    }
    if (_player2.contains(3) && _player2.contains(6) && _player2.contains(9)) {
      _isVisible = true;
      _activePlayer = 1;
      CustomContainer button;
      for (button in _list) {
        button.isEnabled = false;
        if (button.id == 3 || button.id == 6 || button.id == 9)
          button.color = Colors.green;
        else
          button.color = Colors.white;
      }
    }
    if (_player2.contains(1) && _player2.contains(5) && _player2.contains(9)) {
      _isVisible = true;
      _activePlayer = 1;
      CustomContainer button;
      for (button in _list) {
        button.isEnabled = false;
        if (button.id == 1 || button.id == 5 || button.id == 9)
          button.color = Colors.green;
        else
          button.color = Colors.white;
      }
    }
    if (_player2.contains(3) && _player2.contains(5) && _player2.contains(7)) {
      _isVisible = true;
      CustomContainer button;
      _activePlayer = 1;
      for (button in _list) {
        button.isEnabled = false;
        if (button.id == 3 || button.id == 5 || button.id == 7)
          button.color = Colors.green;
        else
          button.color = Colors.white;
      }
    }
  }

  List<CustomContainer> doInit() {
    _player1 = <int>[];
    _player2 = <int>[];
    final List<CustomContainer> listCustom = <CustomContainer>[
      CustomContainer(id: 1),
      CustomContainer(id: 2),
      CustomContainer(id: 3),
      CustomContainer(id: 4),
      CustomContainer(id: 5),
      CustomContainer(id: 6),
      CustomContainer(id: 7),
      CustomContainer(id: 8),
      CustomContainer(id: 9),
    ];
    return listCustom;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tic Tac Toe',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: GridView.builder(
                shrinkWrap: true,
                primary: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0,
                  crossAxisCount: 3,
                ),
                itemBuilder: (BuildContext buildContext, int index) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    color: _list[index].color,
                    child: GestureDetector(
                      onTap: _list[index].isEnabled
                          ? () => playGame(_list[index])
                          : null,
                    ),
                  );
                },
                itemCount: _list.length,
              ),
            ),
          ),
          Visibility(
            visible: _isVisible,
            child: RaisedButton(
              child: const Text('Reset'),
              onPressed: () {
                setState(() {
                  _list = doInit();
                  _isVisible = false;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
