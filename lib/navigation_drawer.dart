// ignore_for_file: dead_code

import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const isCollapsed = false;
    return SizedBox(
      // width: isCollapsed ? 20 : null,
      width: isCollapsed ? MediaQuery.of(context).size.width * 0.2 : null,
      child: Drawer(
        child: Container(
          color: const Color(0xFF1a2f45),
          child: Column(
            children: [
              buildHeader(isCollapsed),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader(bool isCollapsed) {
    return isCollapsed
        ? const Image(
            image: AssetImage('assets/images/logoh.png'),
            height: 30,
          )
        : Row(
            children: const [
              SizedBox(
                width: 24,
              ),
              Image(
                image: AssetImage('assets/images/logoh.png'),
                height: 30,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                'HAMI SWAP',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                maxLines: 1,
              ),
            ],
          );
  }
}
