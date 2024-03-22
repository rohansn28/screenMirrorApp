import 'package:flutter/material.dart';

class OptionWidget extends StatefulWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  OptionWidget({
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<OptionWidget> createState() => _OptionWidgetState();
}

class _OptionWidgetState extends State<OptionWidget> {
  bool? isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(30.0), // Rounded border
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Checkbox(
            value: isChecked,
            shape: const CircleBorder(),
            onChanged: (value) {
              setState(() {
                isChecked = value;
              });
            },
          ),
          const SizedBox(width: 16),
          Text(
            widget.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
