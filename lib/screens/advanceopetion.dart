import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:screenmirroring_app/widgets/glassbox.dart';
import 'package:screenmirroring_app/widgets/selectoption.dart';

class AdvanceOption extends StatefulWidget {
  const AdvanceOption({super.key});

  @override
  State<AdvanceOption> createState() => _AdvanceOptionState();
}

class _AdvanceOptionState extends State<AdvanceOption> {
  int selectedOption = 0;
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        title: Text('Options'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            GlassBox(
              themargin: EdgeInsets.all(16.0),
              theHeight: MediaQuery.of(context).size.height * 0.25,
              theChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Select Mode',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (!isChecked! == false) {
                        setState(() {
                          isChecked = !isChecked!;
                        });
                      }
                    },
                    child: GlassBox(
                      themargin: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      theChild: Row(
                        children: [
                          Checkbox(
                            side: BorderSide(width: 2.0, color: Colors.white),
                            activeColor: const Color.fromARGB(255, 41, 150, 45),
                            value: !isChecked!,
                            shape: const CircleBorder(),
                            onChanged: (value) {
                              setState(() {
                                isChecked = value;
                              });
                            },
                          ),
                          const SizedBox(width: 16),
                          const Text(
                            'Option 1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (!isChecked!) {
                        setState(() {
                          isChecked = !isChecked!;
                        });
                      }
                    },
                    child: GlassBox(
                      themargin: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      theChild: Row(
                        children: [
                          Checkbox(
                            side: BorderSide(width: 2.0, color: Colors.white),
                            activeColor: const Color.fromARGB(255, 41, 150, 45),
                            value: isChecked,
                            shape: const CircleBorder(),
                            onChanged: (value) {
                              setState(() {
                                isChecked = value;
                              });
                            },
                          ),
                          const SizedBox(width: 16),
                          const Text(
                            'Option 2',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(child: Container()),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/progress");
              },
              child: GlassBox(
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
    );
  }
}
