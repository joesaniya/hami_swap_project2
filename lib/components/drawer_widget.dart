// import 'package:flutter/material.dart';

// import '../model/drawer_item.dart';
// import 'drawer/bottom_user_info.dart';
// import 'drawer/header.dart';

// class DrawerWidget extends StatefulWidget {
//   const DrawerWidget({Key? key}) : super(key: key);

//   @override
//   State<DrawerWidget> createState() => _DrawerWidgetState();
// }

// class _DrawerWidgetState extends State<DrawerWidget> {
//   bool _isCollapsed = false;
//   bool isCollapsed = false;
//   List<DrawerItem>? Ditem;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: AnimatedContainer(
//       curve: Curves.easeInOutCubic,
//       duration: const Duration(milliseconds: 500),
//       width: _isCollapsed ? 300 : 70,
//       margin: const EdgeInsets.only(bottom: 10, top: 10),
//       decoration: const BoxDecoration(
//         borderRadius: BorderRadius.only(
//           bottomRight: Radius.circular(10),
//           topRight: Radius.circular(10),
//         ),
//         color: Color.fromRGBO(20, 20, 20, 1),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             CustomDrawerHeader(isColapsed: _isCollapsed),
//             const Divider(
//               color: Colors.grey,
//             ),
//             Material(
//               color: Colors.pinkAccent,
//               child: InkWell(
//                 child: AnimatedContainer(
//                   duration: const Duration(milliseconds: 500),
//                   width: isCollapsed ? 300 : 80,
//                   height: 40,
//                   child: Row(
//                     children: [
//                       Expanded(
//                         child: Center(
//                           child: Stack(
//                             clipBehavior: Clip.none,
//                             children: const [
//                               Icon(
//                                 Icons.abc,
//                                 color: Colors.white,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       if (isCollapsed) const SizedBox(width: 10),
//                       if (isCollapsed)
//                         Expanded(
//                           flex: 3,
//                           child: Row(
//                             children: const [
//                               Expanded(
//                                 flex: 4,
//                                 child: Text(
//                                   'text',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                   ),
//                                   maxLines: 1,
//                                   overflow: TextOverflow.clip,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       if (isCollapsed) const Spacer(),
//                       isCollapsed
//                           ? Ditem[index].sub == '0'
//                               ? const Spacer()
//                               : Expanded(
//                                   child: IconButton(
//                                     onPressed: () {
//                                       log('clicked');
//                                       _isCollapsed = !_isVisible;
//                                       setState(() {});
//                                     },
//                                     icon: const Icon(
//                                       Icons.arrow_drop_down,
//                                       color: Colors.yellow,
//                                     ),
//                                   ),
//                                 )
//                           : const Spacer()
//                       // isCollapsed
//                       //     ? Sub == '0'
//                       //         ? const Spacer()
//                       //         : Expanded(
//                       //             child: IconButton(
//                       //               onPressed: () {
//                       //                 log('clicked');
//                       //                 _isCollapsed = !_isVisible;
//                       //                 setState(() {});
//                       //               },
//                       //               icon: const Icon(
//                       //                 Icons.arrow_drop_down,
//                       //                 color: Colors.yellow,
//                       //               ),
//                       //             ),
//                       //           )
//                       //     : const Spacer()
//                     ],
//                   ),
//                 ),
//               ),
//             ),

//             //2
//             const Divider(color: Colors.grey),
//             const Spacer(),

//             // buildList(items: itemsSecond, isCollapsed: _isCollapsed),
//             const SizedBox(height: 10),
//             BottomUserInfo(isCollapsed: _isCollapsed),
//             Align(
//               alignment:
//                   _isCollapsed ? Alignment.bottomRight : Alignment.bottomCenter,
//               child: IconButton(
//                 splashColor: Colors.transparent,
//                 icon: Icon(
//                   _isCollapsed ? Icons.arrow_back_ios : Icons.arrow_forward_ios,
//                   color: Colors.white,
//                   size: 16,
//                 ),
//                 onPressed: () {
//                   setState(() {
//                     _isCollapsed = !_isCollapsed;
//                   });
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     ));
//   }
// }
