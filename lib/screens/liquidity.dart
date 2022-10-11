import 'package:flutter/material.dart';

class Liquidity extends StatelessWidget {
  const Liquidity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3,
      color: Colors.pink,
    );
  }
}
