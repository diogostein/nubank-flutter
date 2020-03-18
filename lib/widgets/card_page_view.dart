import 'package:flutter/material.dart';
import 'package:nubank/style.dart';
import 'package:page_view_indicator/page_view_indicator.dart';

class CardPageView extends StatelessWidget {
  final ValueNotifier<int> notifier = ValueNotifier<int>(0);
  final List<Widget> children;

  CardPageView({@required this.children});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppThemeData.light,
      child: Column(
        children: <Widget>[
          Expanded(
            child: PageView.builder(
              itemBuilder: (context, position) {
                return Card(
                  margin: EdgeInsets.all(16),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: children[position],
                );
              },
              itemCount: children.length,
              onPageChanged: (page) => notifier.value = page,
            ),
          ),
          PageViewIndicator(
            pageIndexNotifier: notifier,
            length: children.length,
            indicatorPadding: EdgeInsets.all(3),
            normalBuilder: (animationController, index) => Circle(
              size: 8,
              color: Colors.white24,
            ),
            highlightedBuilder: (animationController, index) {
              return ScaleTransition(
                scale: CurvedAnimation(
                  parent: animationController,
                  curve: Curves.decelerate,
                ),
                child: Circle(
                  size: 8,
                  color: Colors.white,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
