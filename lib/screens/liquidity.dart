import 'dart:developer';

import 'package:flutter/material.dart';

import '../dialogbox/dialog_helper.dart';
import '../theme/appcolors.dart';
import 'liquidity_swap.dart';

class Liquidity extends StatefulWidget {
  const Liquidity({Key? key}) : super(key: key);

  @override
  State<Liquidity> createState() => _LiquidityState();
}

class _LiquidityState extends State<Liquidity> {
  bool _liquidity = true;
  @override
  Widget build(BuildContext context) {
    return _liquidity
        ? Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.51,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Appcolor.cardbg),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Your Liquidity',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Remove liquidity to receive tokens back',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Appcolor.sw_li_changes,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            log('Settings Clicked');
                            Settings.exit(context);
                          },
                          icon: Icon(
                            Icons.settings,
                            color: Appcolor.sw_li_changes,
                          ),
                        ),
                        // const SizedBox(
                        //   width: 30,
                        // ),
                        GestureDetector(
                          onTap: () {
                            log('history Clicked');
                            Transaction.exit(context);
                          },
                          child: Icon(
                            Icons.history,
                            color: Appcolor.sw_li_changes,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),

                Container(
                  height: 130,
                  width: double.infinity,
                  color: Colors.black,
                  child: Center(
                    child: Text('Connect to a wallet to view your liquidity.',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Appcolor.sw_li_changes,
                            fontSize: 16)),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),

                //cnt
                Container(
                  width: double.infinity,
                  // height: 50,
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                      color: Appcolor.cntbg,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.add),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          log('liquidity clicked');
                          _liquidity = !_liquidity;
                          setState(() {
                            // _liquidity = !_liquidity;
                          });
                        },
                        child: const Text(
                          'Add Liquidity',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              height: 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        : const SwapLiquidity();
    // const Text('data');
  }
}
