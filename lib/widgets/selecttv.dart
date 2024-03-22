import 'package:flutter/material.dart';

class SelectTv extends StatelessWidget {
  const SelectTv({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/options");
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.2,
        child: Container(
          margin: EdgeInsets.all(15.0),
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(
              width: 1.5,
              color: Colors.white.withOpacity(0.4),
            ),
          ),
          child: const Center(
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
  }
}
