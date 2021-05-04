import 'package:flutter/material.dart';

class ButtonAppBar extends StatelessWidget {
  const ButtonAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            width: 40.0,
            height: 40.0,
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
        Container(
          width: 40.0,
          height: 40.0,
          padding: EdgeInsets.all(10.0),
          child: Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }
}
