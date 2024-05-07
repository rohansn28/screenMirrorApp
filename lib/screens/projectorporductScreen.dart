import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:screenmirroring_app/utils/chrome_custome_tabs.dart';
import 'package:screenmirroring_app/widgets/glassbox.dart';
import 'package:screenmirroring_app/widgets/starrating.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

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
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          title: const Text('Projectors'),
        ),
        body: ListView(
          children: [
            GlassBox(
              themargin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
              rad: 10.0,
              theColor: Colors.black45,
              theChild: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.17,
                        'assets/projector.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            'is there any app that can make my Android phone a projector?',
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          StarRating(rating: 3),
                          const SizedBox(
                            height: 5.0,
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                color: Colors.white,
                              ),
                              Text(
                                '8,999',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              launchCustomTabURL(
                                  context, 'https://www.google.com/');
                            },
                            child: const Center(
                              child: Text(
                                'Buy Now',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GlassBox(
              themargin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
              rad: 10.0,
              theColor: Colors.black45,
              theChild: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.17,
                        'assets/projector.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            'is there any app that can make my Android phone a projector?',
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          StarRating(rating: 3),
                          const SizedBox(
                            height: 5.0,
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                color: Colors.white,
                              ),
                              Text(
                                '8,999',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              launchCustomTabURL(
                                  context, 'https://www.google.com/');
                            },
                            child: const Center(
                              child: Text(
                                'Buy Now',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GlassBox(
              themargin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
              rad: 10.0,
              theColor: Colors.black45,
              theChild: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.17,
                        'assets/projector.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            'is there any app that can make my Android phone a projector?',
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          StarRating(rating: 5),
                          const SizedBox(
                            height: 5.0,
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                color: Colors.white,
                              ),
                              Text(
                                '8,999',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              launchCustomTabURL(
                                  context, 'https://www.google.com/');
                            },
                            child: const Center(
                              child: Text(
                                'Buy Now',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GlassBox(
              themargin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
              rad: 10.0,
              theColor: Colors.black45,
              theChild: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.17,
                        'assets/projector.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            'is there any app that can make my Android phone a projector?',
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          StarRating(rating: 4),
                          const SizedBox(
                            height: 5.0,
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                color: Colors.white,
                              ),
                              Text(
                                '8,999',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              launchCustomTabURL(
                                  context, 'https://www.google.com/');
                            },
                            child: const Center(
                              child: Text(
                                'Buy Now',
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
