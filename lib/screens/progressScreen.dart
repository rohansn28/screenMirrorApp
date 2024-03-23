import 'package:flutter/material.dart';
import 'package:screenmirroring_app/widgets/glassbox.dart';
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
    await Future.delayed(Duration(seconds: 5));
    setState(() {
      _texts.add('First text');
    });

    await Future.delayed(Duration(seconds: 3));
    setState(() {
      _texts.add('Second text');
    });

    await Future.delayed(Duration(seconds: 2));
    setState(() {
      _texts.add('Third text');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              GlassBox(
                theColor: Colors.black45,
                theWidth: MediaQuery.of(context).size.width * 0.9,
                theHeight: MediaQuery.of(context).size.height * 0.3,
                theChild: Center(
                  child: SimpleCircularProgressBar(
                    size: 150,
                    animationDuration: 10,
                    mergeMode: true,
                    onGetText: (double value) {
                      return Text(
                        '${value.toInt()}%',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 32.0,
                        ),
                      );
                    },
                  ),
                ),
              ),
              Column(
                children: _texts
                    .map(
                      (text) => Text(
                        text,
                        style:
                            const TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    )
                    .toList(),
              ),
              Expanded(child: Container()),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/mirrorscreen");
                },
                child: GlassBox(
                  theColor: Colors.black45,
                  theHeight: MediaQuery.of(context).size.height * 0.05,
                  theWidth: MediaQuery.of(context).size.width * 0.8,
                  theChild: const Center(
                    child: Text(
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                      "Next",
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
