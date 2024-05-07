import 'package:flutter/material.dart';
import 'package:screenmirroring_app/widgets/glassbox.dart';

class ScreenMirroringScreen extends StatelessWidget {
  const ScreenMirroringScreen({super.key});

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
          title: const Text('Screen Mirroring'),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: // Example 16
                Column(
              children: [
                GlassBox(
                  rad: 10.0,
                  theColor: Colors.black45,
                  theWidth: MediaQuery.of(context).size.width * 0.9,
                  // theHeight: MediaQuery.of(context).size.height * 0.3,
                  theChild: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          'Information',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Text(
                          '1. Make sure your TV & Phones are connected to the same wifi network',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Text(
                          '2. Enable Miracast Display on your TV & Wireless Display option on your phone',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        Text(
                          '3. Click on "Screen mirror" & chosse the TV to mirror your screen on the tv.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                InkWell(
                  onTap: () {
                    const snackBar = SnackBar(content: Text('Error'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: GlassBox(
                    rad: 30.0,
                    theColor: Colors.black45,
                    theHeight: MediaQuery.of(context).size.height * 0.05,
                    theWidth: MediaQuery.of(context).size.width * 0.8,
                    theChild: const Center(
                      child: Text(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                        "Mirror",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/mirrorguide");
                  },
                  child: GlassBox(
                    rad: 30.0,
                    theColor: Colors.black45,
                    theHeight: MediaQuery.of(context).size.height * 0.05,
                    theWidth: MediaQuery.of(context).size.width * 0.8,
                    theChild: const Center(
                      child: Text(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                        "Guide",
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
