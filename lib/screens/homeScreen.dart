import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:screenmirroring_app/widgets/glassbox.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
          ),
        ),
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
              child: const Center(
                child: Text("Image Section"),
              ),
            ),
            // Expanded(
            //   child: Container(
            //     width: double.maxFinite,
            //     decoration: BoxDecoration(
            //       color: Colors.white.withOpacity(0.3),
            //       borderRadius: BorderRadius.all(Radius.circular(20)),
            //       border: Border.all(
            //         width: 1.5,
            //         color: Colors.white.withOpacity(0.4),
            //       ),
            //     ),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: [
            //         InkWell(
            //           onTap: () {
            //             Navigator.pushNamed(context, "/tvscreen");
            //           },
            //           child: Container(
            //             width: MediaQuery.of(context).size.width * 0.9,
            //             height: MediaQuery.of(context).size.height * 0.1,
            //             decoration: BoxDecoration(
            //               color: Colors.white.withOpacity(0.3),
            //               borderRadius: BorderRadius.all(Radius.circular(20)),
            //               border: Border.all(
            //                 width: 1.5,
            //                 color: Colors.white.withOpacity(0.4),
            //               ),
            //             ),
            //             child: const Center(
            //               child: Text(
            //                 style: TextStyle(
            //                     fontSize: 23,
            //                     fontWeight: FontWeight.bold,
            //                     color: Colors.white),
            //                 'Screen Mirroring',
            //               ),
            //             ),
            //           ),
            //         ),
            //         Container(
            //           width: MediaQuery.of(context).size.width * 0.9,
            //           height: MediaQuery.of(context).size.height * 0.1,
            //           decoration: BoxDecoration(
            //             color: Colors.white.withOpacity(0.3),
            //             borderRadius: BorderRadius.all(Radius.circular(20)),
            //             border: Border.all(
            //               width: 1.5,
            //               color: Colors.white.withOpacity(0.4),
            //             ),
            //           ),
            //           child: Center(
            //             child: Text(
            //               style: TextStyle(
            //                   fontSize: 23,
            //                   fontWeight: FontWeight.bold,
            //                   color: Colors.white),
            //               'Video Projector',
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),

            // ),
            const Expanded(
              child: SizedBox(),
            ),
            GlassBox(
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
                  GlassBox(
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
