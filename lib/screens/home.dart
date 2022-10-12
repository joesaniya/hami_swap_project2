import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swap_hami/screens/liquidity.dart';
import 'package:swap_hami/screens/swap.dart';
import 'package:swap_hami/theme/appcolors.dart';

import '../components/drawer/customdrawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool _flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.grey.shade100,
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   iconTheme: const IconThemeData(color: Colors.black),
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      // drawer: const Drawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey.shade200,
              ),
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.grey.shade200,
            // backgroundColor: currentTheme.isDark ? Colors.black : Colors.white,

            title: const Text(
              "HAMI SWAP",
              style: TextStyle(
                  color: Colors.black,
                  // color: currentTheme.isDark ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            centerTitle: false,
            leading: IconButton(
              onPressed: () {
                _scaffoldKey.currentState!.openDrawer();
              },
              icon: const Icon(
                Iconsax.menu,
                color: Colors.black,
                // color: currentTheme.isDark ? Colors.white : Colors.black,
              ),
            ),
            elevation: 0,
          ),
        ),
      ),
      drawer: const CustomDrawer(),
      // body: const Center(
      //   child: Text(
      //     'Collasable drawer',
      //     style: TextStyle(
      //       color: Colors.black,
      //       fontSize: 18,
      //     ),
      //   ),
      // ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const Text('data'),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.03,
                width: 250,
                height: 40,
                decoration: BoxDecoration(
                    color: Appcolor.sw_li,
                    borderRadius: BorderRadius.circular(30)),
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
                            'Swap',
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
                            'Liquidity',
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

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),

            //2
            SizedBox(
              child: _flag ? const Swap() : const Liquidity(),
            )
          ],
        ),
      ),
    );
  }
}
