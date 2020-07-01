import 'package:flutter/material.dart';

class MyItems extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color color;
  final Function onTap;

  const MyItems({Key key, this.iconData, this.text, this.color, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: color,
      borderRadius: BorderRadius.circular(24.0),
      child: Material(
        elevation: 14.0,
        shadowColor: Color(0x802196F3),
        borderRadius: BorderRadius.circular(24.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        text,
                        style: TextStyle(
                          color: color,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Material(
                      color: color,
                      borderRadius: BorderRadius.circular(24.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          iconData,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
