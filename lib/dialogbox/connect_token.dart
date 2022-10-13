import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:swap_hami/model/wallet.dart';
import 'package:swap_hami/screens/select_wallet.dart';

import '../theme/appcolors.dart';

class ConnectToken extends StatefulWidget {
  const ConnectToken({Key? key}) : super(key: key);

  @override
  State<ConnectToken> createState() => _ConnectTokenState();
}

class _ConnectTokenState extends State<ConnectToken> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) => Container(
        height: 570,
        decoration: BoxDecoration(
            color: Appcolor.cardbg,
            // color: currentTheme.isDark ? Colors.black : Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: const BorderRadius.all(Radius.circular(12))),
        child: SingleChildScrollView(
            child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Select Token',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                      onPressed: () {
                        log('cancel');
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.cancel,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 400,
              child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                  crossAxisCount: 2,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  // shrinkWrap: true,
                  // crossAxisCount: 2,
                  // crossAxisSpacing: 4.0,
                  // mainAxisSpacing: 8.0,
                  children: List.generate(Wallets.length, (index) {
                    return Center(
                      child: SelectWallet(
                        wallet: Wallets[index],
                      ),
                    );
                  })),
            )
          ],
        )),
      );
}
