import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final title, icon, onTap;

  CardButton({@required this.title, @required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: InkWell(
        child: Container(
          width: 80,
          height: 80,
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Icon(icon),
                ),
              ),
              Text(
                title,
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ),
        onTap: onTap,
        splashColor: Colors.white24,
      ),
    );
  }
}
