import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:screenmirroring_app/widgets/glassbox.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
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
          body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                // gradient: LinearGradient(
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                //   colors: [
                //     Colors.purple,
                //     Colors.blue,
                //     Colors.green,
                //   ],
                // ),
              ),
              child: Center(
                child: Image.asset(
                  'assets/mainscreen.png',
                  width: 350,
                ),
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            GlassBox(
              rad: 10.0,
              theHeight: MediaQuery.of(context).size.height * 0.3,
              theWidth: double.infinity,
              theColor: Colors.black45,
              theChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/tvscreen");
                    },
                    child: GlassBox(
                      rad: 20.0,
                      theWidth: MediaQuery.of(context).size.width * 0.8,
                      theHeight: MediaQuery.of(context).size.height * 0.09,
                      theColor: Colors.black45,
                      theChild: const Center(
                        child: Text(
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          'Screen Mirroring',
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "/projector");
                    },
                    child: GlassBox(
                      rad: 20.0,
                      theWidth: MediaQuery.of(context).size.width * 0.8,
                      theHeight: MediaQuery.of(context).size.height * 0.09,
                      theColor: Colors.black45,
                      theChild: const Center(
                        child: Text(
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          'Video Projector',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
