import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:swap_hami/data/drawer_items.dart';
import 'package:swap_hami/screens/trade.dart';

import '../../model/drawer_item.dart';
import 'header.dart';
import 'bottom_user_info.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool _isCollapsed = false;
  final bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnimatedContainer(
        curve: Curves.easeInOutCubic,
        duration: const Duration(milliseconds: 500),
        width: _isCollapsed ? 300 : 70,
        margin: const EdgeInsets.only(bottom: 10, top: 10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: Color.fromRGBO(20, 20, 20, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomDrawerHeader(isColapsed: _isCollapsed),
              const Divider(
                color: Colors.grey,
              ),
              // CustomListTile(
              //   isCollapsed: _isCollapsed,
              //   icon: Icons.home_outlined,
              //   title: 'Home',
              //   infoCount: 0,
              // ),
              // CustomListTile(
              //   isCollapsed: _isCollapsed,
              //   icon: Iconsax.trade,
              //   title: 'Trade',
              //   infoCount: 0,
              // ),
              // CustomListTile(
              //   isCollapsed: _isCollapsed,
              //   icon: Icons.group,
              //   title: 'Social Media',
              //   infoCount: 0,
              //   doHaveMoreOptions: Icons.arrow_forward_ios,
              // ),
              // CustomListTile(
              //   isCollapsed: _isCollapsed,
              //   icon: Icons.more_horiz,
              //   title: 'More',
              //   infoCount: 0,
              // ),
              buildList(items: itemsFirst, isCollapsed: _isCollapsed),
              //no
              // CustomListTile(
              //   isCollapsed: _isCollapsed,
              //   icon: Icons.cloud,
              //   title: 'Weather',
              //   infoCount: 0,
              //   doHaveMoreOptions: Icons.arrow_forward_ios,
              // ),
              // CustomListTile(
              //   isCollapsed: _isCollapsed,
              //   icon: Icons.airplane_ticket,
              //   title: 'Flights',
              //   infoCount: 0,
              //   doHaveMoreOptions: Icons.arrow_forward_ios,
              // ),
              const Divider(color: Colors.grey),
              const Spacer(),
              // CustomListTile(
              //   isCollapsed: _isCollapsed,
              //   icon: Icons.notifications,
              //   title: 'Notifications',
              //   infoCount: 0,
              // ),
              // CustomListTile(
              //   isCollapsed: _isCollapsed,
              //   icon: Icons.settings,
              //   title: 'Settings',
              //   infoCount: 0,
              // ),
              buildList(items: itemsSecond, isCollapsed: _isCollapsed),
              const SizedBox(height: 10),
              BottomUserInfo(isCollapsed: _isCollapsed),
              Align(
                alignment: _isCollapsed
                    ? Alignment.bottomRight
                    : Alignment.bottomCenter,
                child: IconButton(
                  splashColor: Colors.transparent,
                  icon: Icon(
                    _isCollapsed
                        ? Icons.arrow_back_ios
                        : Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 16,
                  ),
                  onPressed: () {
                    setState(() {
                      _isCollapsed = !_isCollapsed;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildList({
    required bool isCollapsed,
    required List<DrawerItem> items,
  }) =>
      ListView.builder(
          shrinkWrap: true,
          primary: false,
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return buildMenuItem(
                isCollapsed: isCollapsed,
                text: item.title,
                icon: item.icon,
                Sub: item.sub,
                onClicked: () => selectItem(context, index));
          });

  // void selectItem(BuildContext context,int index){
  //   final navigateTo=(page)=> Navigator.of(context).push( MaterialPageRoute(builder: (context) => page,
  //       ),);
  //   Switch(index){
  //     case 0:
  //     navigateTo(HomeScreen());
  //     break;
  //   }
  // }

  Widget buildMenuItem(
      {required bool isCollapsed,
      required String text,
      required String Sub,
      required IconData icon,
      VoidCallback? onClicked}) {
    const color = Colors.white;
    final leading = Icon(
      icon,
      color: color,
    );
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onClicked,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          width: isCollapsed ? 300 : 80,
          height: 40,
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Icon(
                        icon,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              if (isCollapsed) const SizedBox(width: 10),
              if (isCollapsed)
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Text(
                          text,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ],
                  ),
                ),
              if (isCollapsed) const Spacer(),
              isCollapsed
                  ? Sub == '0'
                      ? const Spacer()
                      : Expanded(
                          child: IconButton(
                            onPressed: () {
                              log('clicked');
                              _isCollapsed = !_isVisible;
                              setState(() {});
                            },
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.transparent,
                            ),
                          ),
                        )
                  : const Spacer()
            ],
          ),
        ),
      ),
    );
    // return
  }
}

selectItem(BuildContext context, int index) {
  log('select');
  final navigateTo = (page) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => page,
        ),
      );
  switch (index) {
    case 0:
      // navigateTo(const HomeScreen());
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => const HomeScreen()),
      // );
      log('0');
      break;
    case 1:
      log('1');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Trade()),
      );
      break;
    case 2:
      log('2');
      break;
    case 3:
      log('3');
      break;
    case 4:
      log('4');
      break;
    case 5:
      log('settings');
      break;
  }
}
