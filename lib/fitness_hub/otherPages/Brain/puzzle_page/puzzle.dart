import 'package:flutter/material.dart';




class PuzzlePage extends StatelessWidget {
  const PuzzlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('پازل عددی'),
      ),
      body: const MenuWidget(),
    );
  }
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SliderPuzzleGame(rows: 3, cols: 3),
                ),
              );
            },
            child: const Text('ساده 3 * 3'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SliderPuzzleGame(rows: 4, cols: 4),
                ),
              );
            },
            child: const Text('متوسط 4 * 4'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SliderPuzzleGame(rows: 5, cols: 5),
                ),
              );
            },
            child: const Text('سخت 5 * 5'),
          ),
        ],
      ),
    );
  }
}

class SliderPuzzleGame extends StatefulWidget {
  final int rows;
  final int cols;

  SliderPuzzleGame({super.key, required this.rows, required this.cols});

  @override
  _SliderPuzzleGameState createState() => _SliderPuzzleGameState();
}

class _SliderPuzzleGameState extends State<SliderPuzzleGame> {
  late List<int> numbers;
  late List<int> solution;
  late bool gameOver;
  late int moves;

  @override
  void initState() {
    super.initState();
    moves = 0;
    gameOver = false;
    initializePuzzle();
  }

  void initializePuzzle() {
    numbers = List.generate(widget.rows * widget.cols, (index) => index);
    solution = List.generate(widget.rows * widget.cols, (index) => index);
    numbers.shuffle();
  }

  void checkCompletion() {
    if (listEquals(numbers, solution)) {
      setState(() {
        gameOver = true;
      });
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('تبریک!'),
          content: Text('موفق شدی در $moves حرکت.'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    }
  }

  void moveTile(int index) {
    if (!gameOver) {
      setState(() {
        int emptyIndex = numbers.indexOf(0);
        if (isMoveValid(index, emptyIndex)) {
          numbers[emptyIndex] = numbers[index];
          numbers[index] = 0;
          moves++;
          checkCompletion();
        }
      });
    }
  }

  bool isMoveValid(int index, int emptyIndex) {
    if (index == emptyIndex) return false;
    if (index % widget.cols == emptyIndex % widget.cols) {
      return (index - emptyIndex).abs() == widget.cols;
    } else if (index ~/ widget.cols == emptyIndex ~/ widget.cols) {
      return (index - emptyIndex).abs() == 1;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('پازل عددی ${widget.rows}x${widget.cols}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: widget.cols,
              ),
              itemCount: numbers.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => moveTile(index),
                  child: Container(
                    margin: const EdgeInsets.all(2),
                    color: numbers[index] == 0 ? Colors.grey[300] : Colors.blue,
                    child: Center(
                      child: Text(
                        numbers[index] != 0 ? '${numbers[index]}' : '',
                        style: const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            Text(
              'حرکات: $moves',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

bool listEquals(List list1, List list2) {
  if (list1.length != list2.length) return false;
  for (int i = 0; i < list1.length; i++) {
    if (list1[i] != list2[i]) return false;
  }
  return true;
}
