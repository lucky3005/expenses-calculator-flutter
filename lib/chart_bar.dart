import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String lebel;
  final double spendingAmount;
  final double spendingPctOfTotal;

  ChartBar(this.lebel, this.spendingAmount, this.spendingPctOfTotal);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 20,
            child: FittedBox(
                child: Text('₹' + spendingAmount.toStringAsFixed(0)))),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 100,
          width: 10,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1.0),
                  color: Color.fromRGBO(201, 237, 237, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              FractionallySizedBox(
                heightFactor: spendingPctOfTotal,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(lebel),
      ],
    );
  }
}
