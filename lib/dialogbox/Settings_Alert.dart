import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../theme/appcolors.dart';
import 'dialog_helper.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSwitched = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
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
                    'Settings',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Icon(
                    Icons.cancel,
                    color: Appcolor.cntbg,
                  )
                ],
              ),
            ),

            //1
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Global',
                      style: TextStyle(
                          color: Appcolor.global_txt,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Default Transaction Speed (GWEI)',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.help,
                        color: Appcolor.sw_li_changes,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 30,
                            width: 140,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Appcolor.global_bg),
                            child: Center(
                                child: Text(
                              'Standard (5)',
                              style: TextStyle(
                                  color: Appcolor.cntbg,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                          Container(
                            height: 30,
                            width: 140,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Appcolor.global_bg),
                            child: Center(
                                child: Text(
                              'Fast (6)',
                              style: TextStyle(
                                  color: Appcolor.cntbg,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Appcolor.global_bg),
                        child: Center(
                            child: Text(
                          'Instant (7)',
                          style: TextStyle(
                              color: Appcolor.cntbg,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )),
                      ),

                      const SizedBox(
                        height: 70,
                      ),

                      //2swap
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'SWAPS & LIQUIDITY',
                          style: TextStyle(
                              color: Appcolor.global_txt,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Slippage Tolerance',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.help,
                            color: Appcolor.sw_li_changes,
                          )
                        ],
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Appcolor.global_bg),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Center(
                                child: Text(
                              '0.1 %',
                              style: TextStyle(
                                  color: Appcolor.cntbg,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Appcolor.global_bg),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Center(
                                child: Text(
                              '0.5 %',
                              style: TextStyle(
                                  color: Appcolor.cntbg,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Appcolor.global_bg),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: Center(
                                child: Text(
                              '1.0 %',
                              style: TextStyle(
                                  color: Appcolor.cntbg,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                          const SizedBox(width: 10),

                          Container(
                            height: 30,
                            width: 70,

                            // margin: const EdgeInsets.only(right: 15, left: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    width: 2, color: Appcolor.sw_li_changes)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: TextField(
                                // onChanged: (value) => _runFilter(value),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Appcolor.sw_li_changes,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                                // style: TextStyle(
                                //     color: Appcolor.sw_li_changes,
                                //     fontSize: 16,
                                //     fontWeight: FontWeight.w400),
                                maxLines: 1,
                                textInputAction: TextInputAction.search,
                                decoration: InputDecoration(
                                  fillColor: Appcolor.search_txtfield_b,
                                  filled: true,
                                  hintText: '1.00',
                                  hintStyle: TextStyle(
                                      color: Appcolor.sw_li_changes,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                  prefixIconConstraints:
                                      const BoxConstraints(maxHeight: 20),
                                  contentPadding: const EdgeInsets.symmetric(
                                      // horizontal: 17,
                                      horizontal: 15,
                                      vertical: 8.0),
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '%',
                            style: TextStyle(
                                color: Appcolor.cntbg,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          )

                          //
                        ],
                      ),

                      const SizedBox(
                        height: 40,
                      ),

                      //toggle1
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'Tx deadline (mins)',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.help,
                                color: Appcolor.sw_li_changes,
                              )
                            ],
                          ),
                          Container(
                            height: 30,
                            width: 50,

                            // margin: const EdgeInsets.only(right: 15, left: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    width: 2, color: Appcolor.sw_li_changes)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: TextField(
                                textAlign: TextAlign.center,
                                // onChanged: (value) => _runFilter(value),
                                style: TextStyle(
                                    color: Appcolor.sw_li_changes,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                                // style: TextStyle(
                                //     color: Appcolor.sw_li_changes,
                                //     fontSize: 16,
                                //     fontWeight: FontWeight.w400),
                                maxLines: 1,
                                textInputAction: TextInputAction.search,
                                decoration: InputDecoration(
                                  fillColor: Appcolor.search_txtfield_b,
                                  filled: true,
                                  hintText: '20',
                                  hintStyle: TextStyle(
                                      color: Appcolor.sw_li_changes,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                  prefixIconConstraints:
                                      const BoxConstraints(maxHeight: 20),
                                  contentPadding: const EdgeInsets.symmetric(
                                      // horizontal: 17,
                                      horizontal: 15,
                                      vertical: 8.0),
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 40,
                      ),

                      //toggle2
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'Expert Mode',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.help,
                                color: Appcolor.sw_li_changes,
                              )
                            ],
                          ),

                          // CustomSwitch(
                          //   value: isSwitched,
                          //   activeColor: Colors.yellow,
                          //   onChanged: toggleSwitch,
                          // ),
                          FlutterSwitch(
                            width: 50.0,
                            height: 30.0,
                            toggleSize: 25.0,
                            value: isSwitched,
                            borderRadius: 30.0,
                            padding: 2.0,
                            toggleColor: Appcolor.cardbg,
                            switchBorder: Border.all(
                              color: Appcolor.sw_li_changes,
                              width: 2.0,
                            ),
                            toggleBorder: Border.all(
                              color: Appcolor.sw_li_changes,
                              width: 2.0,
                            ),
                            activeColor: Appcolor.global_txt,
                            inactiveColor: Appcolor.frmbg,
                            onToggle: toggleSwitch,
                            // onToggle: (val) {
                            //   setState(() {
                            //     status2 = val;
                            //   });
                            // },
                          ),

                          // FlutterSwitch(
                          //   value: isSwitched,
                          //   onToggle: toggleSwitch,
                          //   valueFontSize: 25.0,
                          //   toggleSize: 45.0,
                          //   borderRadius: 30.0,
                          //   padding: 8.0,
                          //   showOnOff: true,
                          // )

                          //btnt
                          // Switch(
                          //   onChanged: toggleSwitch,
                          //   value: isSwitched,
                          //   activeColor: Colors.blue,
                          //   activeTrackColor: Appcolor.global_txt,
                          //   inactiveThumbColor: Colors.redAccent,
                          //   inactiveTrackColor: Appcolor.frmbg,
                          // ),
                        ],
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      //toggle3
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'Disable Multihops',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.help,
                                color: Appcolor.sw_li_changes,
                              )
                            ],
                          ),

                          // CustomSwitch(
                          //   value: isSwitched,
                          //   activeColor: Colors.yellow,
                          //   onChanged: toggleSwitch,
                          // ),
                          FlutterSwitch(
                            width: 50.0,
                            height: 30.0,
                            toggleSize: 25.0,
                            value: isSwitched2,
                            borderRadius: 30.0,
                            padding: 2.0,
                            toggleColor: Appcolor.cardbg,
                            switchBorder: Border.all(
                              color: Appcolor.sw_li_changes,
                              width: 2.0,
                            ),
                            toggleBorder: Border.all(
                              color: Appcolor.sw_li_changes,
                              width: 2.0,
                            ),
                            activeColor: Appcolor.global_txt,
                            inactiveColor: Appcolor.frmbg,
                            onToggle: toggleSwitch2,
                            // onToggle: (val) {
                            //   setState(() {
                            //     status2 = val;
                            //   });
                            // },
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      //toggle4
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'Flippy sounds',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.help,
                                color: Appcolor.sw_li_changes,
                              )
                            ],
                          ),

                          // CustomSwitch(
                          //   value: isSwitched,
                          //   activeColor: Colors.yellow,
                          //   onChanged: toggleSwitch,
                          // ),
                          FlutterSwitch(
                            width: 50.0,
                            height: 30.0,
                            toggleSize: 25.0,
                            value: isSwitched3,
                            borderRadius: 30.0,
                            padding: 2.0,
                            toggleColor: Appcolor.cardbg,
                            switchBorder: Border.all(
                              color: Appcolor.sw_li_changes,
                              width: 2.0,
                            ),
                            toggleBorder: Border.all(
                              color: Appcolor.sw_li_changes,
                              width: 2.0,
                            ),
                            activeColor: Appcolor.global_txt,
                            inactiveColor: Appcolor.frmbg,
                            onToggle: toggleSwitch3,
                            // onToggle: (val) {
                            //   setState(() {
                            //     status2 = val;
                            //   });
                            // },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        )),
      );

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        // textValue = 'Switch Button is ON';
        log('Expert mode on');
        Expert.exit(context);
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        // textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  void toggleSwitch2(bool value) {
    if (isSwitched2 == false) {
      setState(() {
        isSwitched2 = true;
        // textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched2 = false;
        // textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  void toggleSwitch3(bool value) {
    if (isSwitched3 == false) {
      setState(() {
        isSwitched3 = true;
        // textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched3 = false;
        // textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }
}
