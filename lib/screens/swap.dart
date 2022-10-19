import 'dart:developer';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:swap_hami/dialogbox/dialog_helper.dart';
import 'package:swap_hami/theme/appcolors.dart';

class Swap extends StatefulWidget {
  const Swap({Key? key}) : super(key: key);
  // final Company data;
  // Swap({required this.data});

  @override
  State<Swap> createState() => _SwapState();
}

class _SwapState extends State<Swap> {
  var amount = TextEditingController(text: "0.00");

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // height: MediaQuery.of(context).size.height * 0.51,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Appcolor.cardbg),
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
                    'Exchange',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Trade tokens in an instant',
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
                  const SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      log('history Clicked');
                      Transaction.exit(context);
                    },
                    child: Icon(
                      Icons.history,
                      color: Appcolor.sw_li_changes,
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),

          //frm
          Container(
            // width: double.infinity,
            // // height: 110,
            // height: MediaQuery.of(context).size.height * 0.1,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
                color: Appcolor.frmbg, borderRadius: BorderRadius.circular(30)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'From',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Appcolor.frmtxt),
                      ),
                      // SizedBox(
                      //   width: 60,
                      //   height: 40,
                      //   child: TextField(
                      //     decoration: InputDecoration(
                      //         hintText: '0.00',
                      //         hintStyle: const TextStyle(
                      //             color: Colors.grey, fontSize: 20),
                      //         border: OutlineInputBorder(
                      //           borderRadius: BorderRadius.circular(10),
                      //           borderSide: BorderSide.none,
                      //         ),
                      //         focusedBorder: OutlineInputBorder(
                      //           borderRadius: BorderRadius.circular(10),
                      //           borderSide: BorderSide.none,
                      //         )),
                      //   ),
                      // ),
                      //token
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      Row(
                        children: [
                          Expanded(
                            child: FadeInUp(
                              // from: 40,
                              delay: const Duration(milliseconds: 800),
                              duration: const Duration(milliseconds: 1000),
                              child: TextField(
                                // controller: textEditingController,
                                controller: amount,

                                textAlign: TextAlign.left,
                                // keyboardType: const TextInputType.numberWithOptions(
                                //     signed: true, decimal: true),
                                cursorColor: Appcolor.sw_li_changes,
                                style: TextStyle(
                                    color: Appcolor.sw_li_changes,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                                onSubmitted: (value) {
                                  setState(() {
                                    amount.text = "₹$value.00";
                                    // textEditingController.text = "\₹" + value + ".00";
                                  });
                                },
                                onTap: () {
                                  setState(() {
                                    if (amount.text == "0.00") {
                                      amount.text = "";
                                    } else {
                                      amount.text = amount.text
                                          .replaceAll(RegExp(r'.00'), '');
                                    }
                                  });
                                },

                                decoration: InputDecoration(
                                    // errorText: _validate ? 'Value Can\'t Be Empty' : null,
                                    hintText: "0.0",
                                    isDense: true,
                                    contentPadding: EdgeInsets.zero,
                                    hintStyle: const TextStyle(
                                        color: Colors.grey, fontSize: 20),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none,
                                    )),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              log('select token');
                              DialogHelperToken.exit(context);
                              // DialogHelper1.exit(context);
                            },
                            child: Container(
                              child: Row(
                                children: const [
                                  // Icon(Icons.abc),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/bnb.png'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'BNB',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  )
                                ],
                              ),
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
          const SizedBox(
            height: 20,
          ),
          Icon(
            Icons.arrow_downward,
            color: Appcolor.sw_li_changes,
            size: 16,
          ),

          const SizedBox(
            height: 20,
          ),

          //to
          Container(
            // width: double.infinity,
            // // height: 110,
            // height: MediaQuery.of(context).size.height * 0.1,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
                color: Appcolor.frmbg, borderRadius: BorderRadius.circular(30)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'To',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Appcolor.frmtxt),
                      ),
                      // SizedBox(
                      //   width: 60,
                      //   height: 40,
                      //   child: TextField(
                      //     decoration: InputDecoration(
                      //         hintText: '0.00',
                      //         hintStyle: const TextStyle(
                      //             color: Colors.grey, fontSize: 20),
                      //         border: OutlineInputBorder(
                      //           borderRadius: BorderRadius.circular(10),
                      //           borderSide: BorderSide.none,
                      //         ),
                      //         focusedBorder: OutlineInputBorder(
                      //           borderRadius: BorderRadius.circular(10),
                      //           borderSide: BorderSide.none,
                      //         )),
                      //   ),
                      // ),
                      //token
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      Row(
                        children: [
                          Expanded(
                            child: FadeInUp(
                              // from: 40,
                              delay: const Duration(milliseconds: 800),
                              duration: const Duration(milliseconds: 1000),
                              child: TextField(
                                // controller: textEditingController,
                                controller: amount,

                                textAlign: TextAlign.left,
                                // keyboardType: const TextInputType.numberWithOptions(
                                //     signed: true, decimal: true),
                                cursorColor: Appcolor.sw_li_changes,
                                style: TextStyle(
                                    color: Appcolor.sw_li_changes,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                                onSubmitted: (value) {
                                  setState(() {
                                    amount.text = "₹$value.00";
                                    // textEditingController.text = "\₹" + value + ".00";
                                  });
                                },
                                onTap: () {
                                  setState(() {
                                    if (amount.text == "0.00") {
                                      amount.text = "";
                                    } else {
                                      amount.text = amount.text
                                          .replaceAll(RegExp(r'.00'), '');
                                    }
                                  });
                                },

                                decoration: InputDecoration(
                                    // errorText: _validate ? 'Value Can\'t Be Empty' : null,
                                    hintText: "0.0",
                                    isDense: true,
                                    contentPadding: EdgeInsets.zero,
                                    hintStyle: const TextStyle(
                                        color: Colors.grey, fontSize: 20),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none,
                                    )),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              log('select token');
                              DialogHelperToken.exit(context);
                              // DialogHelper1.exit(context);
                            },
                            child: Container(
                              child: Row(
                                children: const [
                                  Text(
                                    'Select a currency',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  )
                                ],
                              ),
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
          // Container(
          //   width: double.infinity,
          //   height: MediaQuery.of(context).size.height * 0.1,
          //   decoration: BoxDecoration(
          //       color: Appcolor.frmbg, borderRadius: BorderRadius.circular(30)),
          // ),

          const SizedBox(
            height: 20,
          ),

          //cnt
          GestureDetector(
            onTap: () {
              log('Connect Clicked');
              DialogConnectToken.exit(context);
              // DialogHelper1.exit(context);
            },
            child: Container(
              width: double.infinity,
              // height: 50,
              height: MediaQuery.of(context).size.height * 0.06,
              decoration: BoxDecoration(
                  color: Appcolor.cntbg,
                  borderRadius: BorderRadius.circular(20)),
              child: const Center(
                  child: Text(
                'Connect',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
