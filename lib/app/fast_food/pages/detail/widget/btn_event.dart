
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample_quino/app/fast_food/theme/style.dart';

class BtnEvent extends StatelessWidget {
  const BtnEvent({
    Key key,
    this.color = Style.yellow,
    @required this.icon,
    @required this.onPressed,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Icon(icon, color: Colors.white70),
      ),
      onPressed: onPressed,
    );
  }
}
