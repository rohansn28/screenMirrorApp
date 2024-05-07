import 'package:flutter/material.dart';
import 'package:screenmirroring_app/widgets/glassbox.dart';
import 'package:screenmirroring_app/widgets/selecttv.dart';

class SelectTvScreen extends StatefulWidget {
  const SelectTvScreen({super.key});

  @override
  State<SelectTvScreen> createState() => _SelectTvScreenState();
}

class _SelectTvScreenState extends State<SelectTvScreen> {
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
          centerTitle: true,
          title: const Text("Select TV"),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(15.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/options");
                  },
                  child: GlassBox(
                    rad: 10.0,
                    theColor: Colors.black45,
                    theWidth: MediaQuery.of(context).size.width * 0.8,
                    theHeight: MediaQuery.of(context).size.height * 0.09,
                    theChild: const Center(
                      child: Text(
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        'Acer',
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
