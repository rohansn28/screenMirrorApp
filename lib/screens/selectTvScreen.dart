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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Select TV"),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg.jpg'),
            ),
          ),
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
