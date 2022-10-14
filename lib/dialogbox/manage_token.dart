import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:swap_hami/screens/custom_tokens.dart';

import '../screens/Lists.dart';
import '../theme/appcolors.dart';

class ManageTokens extends StatefulWidget {
  const ManageTokens({Key? key}) : super(key: key);

  @override
  State<ManageTokens> createState() => _ManageTokensState();
}

class _ManageTokensState extends State<ManageTokens> {
  bool _flag = true;

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
        // height: 570,
        decoration: BoxDecoration(
            color: Appcolor.cardbg,
            // color: currentTheme.isDark ? Colors.black : Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: const BorderRadius.all(Radius.circular(12))),
        child: SingleChildScrollView(
            child: Column(
          children: [
            // const SizedBox(
            //   height: 40,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            log('cancel');
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                      const Text(
                        'Manage',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
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
            const SizedBox(
              height: 20,
            ),

            //

            Align(
              alignment: Alignment.center,
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.03,
                width: 250,
                height: 40,
                decoration: BoxDecoration(
                    color: Appcolor.sw_li,
                    border: Border.all(width: 2, color: Appcolor.sw_li_changes),
                    borderRadius: BorderRadius.circular(30)),
                padding: const EdgeInsets.all(1),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _flag = !_flag;
                          });
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: _flag
                                  ? Appcolor.sw_li_changes
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                              child: Text(
                            'Lists',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: _flag
                                    ? Colors.black
                                    : Appcolor.sw_li_changes),
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _flag = !_flag;
                          });
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: _flag
                                  ? Colors.transparent
                                  : Appcolor.sw_li_changes,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                              child: Text(
                            'Tokens',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: _flag
                                    ? Appcolor.sw_li_changes
                                    : Colors.black),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            //3
            SizedBox(
              child: _flag ? const ListsManage() : const CustomTokens(),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        )),
      );
}
