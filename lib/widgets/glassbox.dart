import 'dart:ui';

import 'package:flutter/material.dart';

class GlassBox extends StatelessWidget {
  final theHeight;
  final theWidth;
  final theChild;
  final themargin;
  final theColor;
  const GlassBox({
    super.key,
    this.theChild,
    this.theHeight,
    this.theWidth,
    this.themargin,
    this.theColor,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          margin: themargin,
          height: theHeight,
          width: theWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: theColor, //Colors.black45,
          ),
          child: theChild,
        ),
      ),
      // child: Container(
      //   margin: themargin,
      //   // width: MediaQuery.of(context).size.width,
      //   width: theWidth, //double.maxFinite,
      //   height: theHeight, //MediaQuery.of(context).size.height * 0.3,
      //   color: Colors.transparent,
      //   child: Stack(
      //     children: [
      //       BackdropFilter(
      //         filter: ImageFilter.blur(
      //           sigmaX: 4,
      //           sigmaY: 4,
      //         ),
      //         child: Container(),
      //       ),
      //       Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(30),
      //           border: Border.all(
      //             color: Colors.white.withOpacity(0.13),
      //           ),
      //           gradient: LinearGradient(
      //             begin: Alignment.topLeft,
      //             end: Alignment.bottomRight,
      //             colors: [
      //               Colors.white.withOpacity(0.15),
      //               Colors.white.withOpacity(0.15),
      //             ],
      //           ),
      //         ),
      //         child: theChild,
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
