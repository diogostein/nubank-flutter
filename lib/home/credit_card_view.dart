import 'package:flutter/material.dart';

class CreditCardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.credit_card),
                    SizedBox(width: 16),
                    Text('Cartão de crédito'),
                  ],
                ),
                SizedBox(height: 16),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'FATURA FECHADA',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.red[400],
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 32,
                            color: Colors.red[400],
                            fontWeight: FontWeight.w300,
                          ),
                          children: [
                            TextSpan(text: 'R\$ '),
                            TextSpan(
                              text: '438',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: ',68')
                          ],
                        ),
                      ),
                      Text(
                        'VENCIMENTO 20 MAR',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: <Widget>[
                          OutlineButton(
                            onPressed: () {},
                            color: Colors.red[400],
                            textColor: Colors.red[400],
                            highlightedBorderColor: Colors.red,
                            borderSide: BorderSide(
                              color: Colors.red[400],
                            ),
                            child: Text(
                              'PAGAR',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          SizedBox(
                            width: 40,
                            child: OutlineButton(
                              onPressed: () {},
                              padding: EdgeInsets.all(0),
                              child: Icon(Icons.more_horiz),
                            ),
                          ),
                        ],
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
              Icon(Icons.directions_bike),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Compra mais recente em Recarga*Bilh Unico no valor de R\$ 50,00',
                    style: TextStyle(fontSize: 12),
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
