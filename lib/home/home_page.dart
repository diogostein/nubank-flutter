import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:nubank/home/bank_account_view.dart';
import 'package:nubank/home/credit_card_view.dart';
import 'package:nubank/widgets/card_button.dart';
import 'package:nubank/widgets/card_page_view.dart';
import 'package:nubank/widgets/user_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            UserButton('Diogo'),
            Expanded(
              child: CardPageView(
                children: <Widget>[
                  CreditCardView(),
                  BankAccountView(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              height: 80,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 10),
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CardButton(
                    title: 'Indicar amigos',
                    icon: Icons.person_add,
                    onTap: () {},
                  ),
                  CardButton(
                    title: 'Recarga de celular',
                    icon: Icons.phone_iphone,
                    onTap: () {},
                  ),
                  CardButton(
                    title: 'Cobrar',
                    icon: Icons.monetization_on,
                    onTap: () {},
                  ),
                  CardButton(
                    title: 'Empréstimos',
                    icon: Icons.attach_money,
                    onTap: () {},
                  ),
                  CardButton(
                    title: 'Depositar',
                    icon: Icons.subdirectory_arrow_left,
                    onTap: () {},
                  ),
                  CardButton(
                    title: 'Transferir',
                    icon: Icons.subdirectory_arrow_right,
                    onTap: () {},
                  ),
                  CardButton(
                    title: 'Ajustar limite',
                    icon: Icons.settings,
                    onTap: () {},
                  ),
                  CardButton(
                    title: 'Me ajuda',
                    icon: Icons.help_outline,
                    onTap: () {},
                  ),
                  CardButton(
                    title: 'Pagar',
                    icon: Icons.attach_money,
                    onTap: () {},
                  ),
                  CardButton(
                    title: 'Bloquear cartão',
                    icon: Icons.block,
                    onTap: () {},
                  ),
                  CardButton(
                    title: 'Cartão virtual',
                    icon: Icons.credit_card,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
