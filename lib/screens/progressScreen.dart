import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class ProgressScreen extends StatefulWidget {
  const ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  List<String> _texts = [];

  @override
  void initState() {
    super.initState();
    _startDisplayingTexts();
  }

  void _startDisplayingTexts() async {
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      _texts.add('First text');
    });

    await Future.delayed(Duration(seconds: 3));
    setState(() {
      _texts.add('Second text');
    });

    await Future.delayed(Duration(seconds: 3));
    setState(() {
      _texts.add('Third text');
    });
  }

  int progress = 0;
  @override
  Widget build(BuildContext context) {
    print(progress);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: // Example 16
              Column(
            children: [
              SimpleCircularProgressBar(
                animationDuration: 10,
                mergeMode: true,
                onGetText: (double value) {
                  return Text('${value.toInt()}%');
                },
              ),
              Column(
                children: _texts
                    .map(
                      (text) => Text(
                        text,
                        style: const TextStyle(fontSize: 24),
                      ),
                    )
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
