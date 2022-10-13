import 'package:flutter/material.dart';
import 'package:swap_hami/model/wallet.dart';
import 'package:swap_hami/theme/appcolors.dart';

class SelectWallet extends StatelessWidget {
  final Wallet wallet;
  const SelectWallet({Key? key, required this.wallet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
          color: Appcolor.cardbg,
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage(wallet.image.toString()),
                    height: 40,
                    width: 40,
                  ),
                  // Expanded(child: Container()),
                  // const Spacer(),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(wallet.title.toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ]),
          )),
    );
  }
}
