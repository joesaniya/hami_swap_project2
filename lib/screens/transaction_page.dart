import 'package:flutter/material.dart';

import '../theme/appcolors.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({Key? key}) : super(key: key);

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
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
        //  height: 570,
        // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            color: Appcolor.cardbg,
            // color: currentTheme.isDark ? Colors.black : Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: const BorderRadius.all(Radius.circular(12))),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
                color: Appcolor.settings_bg,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Recent Transactions',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.cancel,
                      color: Appcolor.cntbg,
                    ),
                  )
                ],
              ),
            ),

            //1
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: const [],
                ))
          ],
        )),
      );
}
