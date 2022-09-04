import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CircleButton extends StatefulWidget {
  final VoidCallback onPressed;
  bool mini;
  // ignore: prefer_typing_uninitialized_variables
  var icon;
  double iconSize;
  // ignore: prefer_typing_uninitialized_variables
  var color;

  CircleButton(this.mini, this.icon, this.iconSize, this.color,
      {Key? key, required this.onPressed})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CircleButton();
  }
}

class _CircleButton extends State<CircleButton> {
  void onPressedButton() {}

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FloatingActionButton(
      backgroundColor: widget.color,
      mini: widget.mini,
      onPressed: widget.onPressed,
      child: Icon(
        widget.icon,
        size: widget.iconSize,
        color: const Color(0xFF4268D3),
      ),
    ));
  }
}
