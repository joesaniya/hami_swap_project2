// @dart=2.9

import 'package:flutter/material.dart';

import 'model/company.dart';
import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final Company data;

  // MyApp({Key key, this.data}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Collasable drawer',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[900],
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      // builder: (context, child) {
      //   return Scaffold(
      //     key: _scaffoldKey,
      //     appBar: PreferredSize(
      //       preferredSize: const Size.fromHeight(40),
      //       child: Container(
      //         decoration: BoxDecoration(
      //           border: Border(
      //             bottom: BorderSide(
      //               color: Colors.grey.shade200,
      //             ),
      //           ),
      //         ),
      //         child: AppBar(
      //           backgroundColor: Colors.grey.shade200,
      //           // backgroundColor: currentTheme.isDark ? Colors.black : Colors.white,

      //           title: const Text(
      //             "HAMI SWAP",
      //             style: TextStyle(
      //                 color: Colors.black,
      //                 // color: currentTheme.isDark ? Colors.white : Colors.black,
      //                 fontWeight: FontWeight.w600),
      //           ),
      //           centerTitle: false,
      //           leading: IconButton(
      //             onPressed: () {
      //               _scaffoldKey.currentState!.openDrawer();
      //             },
      //             icon: const Icon(
      //               Iconsax.menu,
      //               color: Colors.black,
      //               // color: currentTheme.isDark ? Colors.white : Colors.black,
      //             ),
      //           ),
      //           elevation: 0,
      //         ),
      //       ),
      //     ),
      //     // drawer: const NavigationDrawerWidget(),
      //     drawer: const CustomDrawer(),
      //     body: child,
      //   );
      // },
      home: const HomeScreen(),
      // home: HomeScreen(
      //   data: data,
      // ),
    );
  }
}
