import 'package:flutter/material.dart';
import 'package:screenmirroring_app/widgets/glassbox.dart';

class ScreenMirroringScreen extends StatelessWidget {
  const ScreenMirroringScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                        ),
                      ),
                      Divider(),
                      Text(
                        '1. Make sure your TV & Phones are connected to the same wifi network',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Divider(),
                      Text(
                        '2. Enable Miracast Display on your TV & Wireless Display option on your phone',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Divider(),
                      Text(
                        '3. Click on "Screen mirror" & chosse the TV to mirror your screen on the tv.',
                        style: TextStyle(
                          color: Colors.white,
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
    );
  }
}
