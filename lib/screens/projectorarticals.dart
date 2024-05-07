import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:screenmirroring_app/utils/chrome_custome_tabs.dart';
import 'package:screenmirroring_app/widgets/glassbox.dart';

class ProjectorArticals extends StatelessWidget {
  const ProjectorArticals({super.key});

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
          title: const Text('Projector Articales'),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          // padding: EdgeInsets.all(16.0),
          children: [
            InkWell(
              onTap: () {
                launchCustomTabURL(context, 'https://www.google.com/');
              },
              child: GlassBox(
                themargin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                rad: 10.0,
                theColor: Colors.black45,
                theChild: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Text(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          'is there any app that can make my Android phone a projector?',
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          width: 100,
                          'assets/projector.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                launchCustomTabURL(context, 'https://www.google.com/');
              },
              child: GlassBox(
                theWidth: MediaQuery.of(context).size.width,
                themargin: EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                rad: 10.0,
                theColor: Colors.black45,
                theChild: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Text(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          'A Projector or TV, which one is best?',
                        ),
                      ),
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            width: 100,
                            'assets/projector.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                launchCustomTabURL(context, 'https://www.google.com/');
              },
              child: GlassBox(
                theWidth: MediaQuery.of(context).size.width,
                themargin: EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                rad: 10.0,
                theColor: Colors.black45,
                theChild: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Text(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          'A Projector or TV, which one is best?',
                        ),
                      ),
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            width: 100,
                            'assets/projector.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                launchCustomTabURL(context, 'https://www.google.com/');
              },
              child: GlassBox(
                theWidth: MediaQuery.of(context).size.width,
                themargin: EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                rad: 10.0,
                theColor: Colors.black45,
                theChild: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Text(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          'A Projector or TV, which one is best?',
                        ),
                      ),
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            width: 100,
                            'assets/projector.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                launchCustomTabURL(context, 'https://www.google.com/');
              },
              child: GlassBox(
                theWidth: MediaQuery.of(context).size.width,
                themargin: EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                rad: 10.0,
                theColor: Colors.black45,
                theChild: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Text(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          'A Projector or TV, which one is best?',
                        ),
                      ),
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            width: 100,
                            'assets/projector.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                launchCustomTabURL(context, 'https://www.google.com/');
              },
              child: GlassBox(
                theWidth: MediaQuery.of(context).size.width,
                themargin: EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                rad: 10.0,
                theColor: Colors.black45,
                theChild: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Text(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          'A Projector or TV, which one is best?',
                        ),
                      ),
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            width: 100,
                            'assets/projector.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
