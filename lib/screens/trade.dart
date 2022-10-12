import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../components/drawer/customdrawer.dart';

class Trade extends StatelessWidget {
  Trade({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
              "Trade",
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

      body: const Center(
        child: Text(
          'Collasable drawer',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
