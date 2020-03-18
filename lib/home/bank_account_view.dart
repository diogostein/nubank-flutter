import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BankAccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.attach_money),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text('Conta'),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.eye),
                      iconSize: 32,
                      visualDensity: VisualDensity.compact,
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Saldo disponível',
                      ),
                      Text(
                        'R\$ 2.074,54',
                        style: Theme.of(context).textTheme.display1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          color: Color(0x08000000),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.credit_card),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Fatura do cartão no valor de R\$ 438,68 fechada',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              Icon(Icons.chevron_right)
            ],
          ),
        ),
      ],
    );
  }
}
