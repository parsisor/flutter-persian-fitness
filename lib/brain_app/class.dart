import 'package:Zerang/select_app/homepage.dart';
import 'package:flutter/material.dart';

class BrainTrainingApp extends StatelessWidget {
  final List<Choice> choices = [
    Choice(title: 'ذهن', icon: Icons.flash_on, color: Colors.green),
    Choice(title: 'سرعت', icon: Icons.speed, color: Colors.red),
    Choice(title: 'منطق', icon: Icons.calculate, color: Colors.blue),
    Choice(title: 'تمرکز', icon: Icons.visibility, color: Colors.orange),
    Choice(title: 'بازی ها', icon: Icons.games, color: Colors.purple),
    Choice(title: 'هوش مصنوعی', icon: Icons.computer, color: Colors.cyan),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('مرکز آموزش مغز'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyHomePage()));
          },
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,
        children: choices.map((choice) {
          return Center(
            child: SelectCard(
              choice: choice,
              onTap: () {
                if (choice.title == 'بازی ها') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TicTacToeGame()),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ComingSoonPage(choice.title)),
                  );
                }
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}

class Choice {
  final String title;
  final IconData icon;
  final Color color;

  Choice({required this.title, required this.icon, required this.color});
}

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice, this.onTap}) : super(key: key);
  final Choice choice;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        color: choice.color,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(child: Icon(choice.icon, size: 50.0, color: Colors.white)),
              Text(choice.title, style: TextStyle(color: Colors.white, fontSize: 16)),
            ],
          ),
        ),
        elevation: 5.0,
      ),
    );
  }
}

class TicTacToeGame extends StatefulWidget {
  @override
  _TicTacToeGameState createState() => _TicTacToeGameState();
}

class _TicTacToeGameState extends State<TicTacToeGame> {
  List<String> board = List.filled(9, '', growable: false);
  String currentPlayer = 'X';

  void _handleTap(int index) {
    if (board[index] == '' && !_checkForWinner(board, currentPlayer)) {
      setState(() {
        board[index] = currentPlayer;
        if (!_checkForWinner(board, currentPlayer)) {
          currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
        }
      });
    }
  }

  bool _checkForWinner(List<String> board, String player) {
    const winningCombinations = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];

    for (var combo in winningCombinations) {
      if (board[combo[0]] == player &&
          board[combo[1]] == player &&
          board[combo[2]] == player) {
        _showEndDialog('بردش $player');
        return true;
      }
    }

    if (!board.contains('')) {
      _showEndDialog('مساوی شدید');
      return false;
    }

    return false;
  }

  void _showEndDialog(String title) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text('میخوای دوباره بازی کنی؟'),
          actions: <Widget>[
            TextButton(
              child: Text('شروع مجدد'),
              onPressed: () {
                setState(() {
                  board = List.filled(9, '', growable: false);
                  currentPlayer = 'X';
                  Navigator.of(context).pop();
                });
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('بازی ایکس-او'),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: 9,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => _handleTap(index),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text(board[index], style: TextStyle(fontSize: 40, color: Colors.blue)),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ComingSoonPage extends StatelessWidget {
  final String title;

  ComingSoonPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          '!این صفحه در به‌روزرسانی بعدی اضافه خواهد شد',
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
