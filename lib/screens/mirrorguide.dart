import 'package:flutter/material.dart';
import 'package:screenmirroring_app/widgets/glassbox.dart';
import 'package:screenmirroring_app/widgets/infoandstepbox.dart';

class ScreenMirrorGuide extends StatelessWidget {
  const ScreenMirrorGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.purple,
            Colors.blue,
            Colors.green,
          ],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Screen Mirroring Guide'),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              GlassBox(
                rad: 10.0,
                theColor: Colors.black45,
                theWidth: MediaQuery.of(context).size.width * 0.9,
                // theHeight: MediaQuery.of(context).size.height * 0.3,
                theChild: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Steps',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                      ),
                      InfoAndStepBox(
                        text: '1. Turn on your smart TV',
                      ),
                      const Divider(
                        color: Colors.black,
                      ),
                      InfoAndStepBox(
                          text:
                              '2. Your TV & Mobile has to be connected on same wifi network'),
                      const Divider(
                        color: Colors.black,
                      ),
                      InfoAndStepBox(
                          text:
                              '3. Open screen mirroing display on TV and enable it'),
                      const Divider(
                        color: Colors.black,
                      ),
                      InfoAndStepBox(
                          text:
                              '4. Click on "Screen Mirroring" option and make sure that the wireless display option is enabled.'),
                      const Divider(
                        color: Colors.black,
                      ),
                      InfoAndStepBox(
                          text: '5. Screen mirror will start automatically'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
