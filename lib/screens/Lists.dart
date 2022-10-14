import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../theme/appcolors.dart';

class ListsManage extends StatefulWidget {
  const ListsManage({Key? key}) : super(key: key);

  @override
  State<ListsManage> createState() => _ListsManageState();
}

class _ListsManageState extends State<ListsManage> {
  bool isSwitched1 = false;
  bool isSwitched2 = false;

  @override
  Widget build(BuildContext context) {
    void toggleSwitch1(bool value) {
      if (isSwitched1 == false) {
        setState(() {
          isSwitched1 = true;
          // textValue = 'Switch Button is ON';
          log('Expert mode on');
        });
        print('Switch Button is ON');
      } else {
        setState(() {
          isSwitched1 = false;
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
          log('Expert mode on');
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

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Container(
            height: 50,
            // margin: const EdgeInsets.only(right: 15, left: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: Appcolor.sw_li_changes)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: TextField(
                // onChanged: (value) => _runFilter(value),
                style: TextStyle(
                    color: Appcolor.sw_li_changes,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                maxLines: 1,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  fillColor: Appcolor.search_txtfield_b,
                  filled: true,
                  hintText: 'https:// or ipfs:// or ENS name',
                  hintStyle: TextStyle(
                    color: Appcolor.sw_li_changes,
                  ),
                  prefixIconConstraints: const BoxConstraints(maxHeight: 20),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 17),
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // to1
          Container(
            height: 80,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    width: 1,
                    // color: Appcolor.global_txt
                    color: isSwitched1
                        ? Appcolor.global_txt
                        : Colors.transparent)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/pancake.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'PancakeSwap Extended',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      // width: 259,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            '310 tokens',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              log('remove');
                            },
                            child: const Icon(
                              Icons.settings,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                          // IconButton(
                          //     onPressed: () {},
                          //     icon: const Icon(
                          //       Icons.settings,
                          //       color: Colors.white,
                          //       size: 15,
                          //     ))
                        ],
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  width: 10,
                ),

                //toggle

                FlutterSwitch(
                  width: 50.0,
                  height: 30.0,
                  toggleSize: 25.0,
                  value: isSwitched1,
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
                  onToggle: toggleSwitch1,
                  // onToggle: (val) {
                  //   setState(() {
                  //     status2 = val;
                  //   });
                  // },
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          //toggle2
          Container(
            height: 80,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    width: 1,
                    // color: Appcolor.global_txt
                    color: isSwitched2
                        ? Appcolor.global_txt
                        : Colors.transparent)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/pancake.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'PancakeSwap Extended',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      // width: 259,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            '98 tokens',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              log('remove');
                            },
                            child: const Icon(
                              Icons.settings,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                          // IconButton(
                          //     onPressed: () {},
                          //     icon: const Icon(
                          //       Icons.settings,
                          //       color: Colors.white,
                          //       size: 15,
                          //     ))
                        ],
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  width: 10,
                ),

                //toggle

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
          )
        ],
      ),
    );
  }
}
