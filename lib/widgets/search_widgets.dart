import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:swap_hami/screens/swap.dart';
import 'package:swap_hami/theme/appcolors.dart';

import '../model/company.dart';

class CompanyTile extends StatelessWidget {
  final Company data;
  const CompanyTile({required this.data});

  @override
  Widget build(BuildContext context) {
    // return Container
    // (
    //   width: MediaQuery.of(context).size.width,
    //   height: 30,
    //   color: Colors.red,
    // );
    return GestureDetector(
      onTap: () {
        log('data clicked');
        log(data.title);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Swap()),
        );
        // .then((value) => null);
        Navigator.pop(context);

        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => Swap(
        //       data: data,
        //     ),
        //   ),
        // );
      },
      child: Container(
        height: 40,
        width: double.infinity,
        color: Colors.transparent,
        child: Row(
          children: [
//               CachedNetworkImage(
//   // imageUrl: "http://via.placeholder.com/200x150",
//   imageUrl: data.image,
//   imageBuilder: (context, imageProvider) => Container(
//     decoration: BoxDecoration(
//       image: DecorationImage(
//           image: imageProvider,
//           fit: BoxFit.cover,
//           // colorFilter:
//           //     ColorFilter.mode(Colors.red, BlendMode.colorBurn)
//               ),
//     ),
//   ),
//   placeholder: (context, url) => CircularProgressIndicator
//   (
//     // color: Appcolor.darkviolte6,
//   ),
//   errorWidget: (context, url, error) => Icon(Icons.error),
// ),
            CircleAvatar(
              backgroundImage: AssetImage(data.image),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  data.Subtitle,
                  style: TextStyle(
                      color: Appcolor.sw_li_changes,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CompanyTile1 extends StatelessWidget {
  final Company data;
  const CompanyTile1({required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40,
        width: double.infinity,
        color: Colors.transparent,
        child: Row(
          children: [
//               CachedNetworkImage(
//   // imageUrl: "http://via.placeholder.com/200x150",
//   imageUrl: data.image,
//   imageBuilder: (context, imageProvider) => Container(
//     decoration: BoxDecoration(
//       image: DecorationImage(
//           image: imageProvider,
//           fit: BoxFit.cover,
//           // colorFilter:
//           //     ColorFilter.mode(Colors.red, BlendMode.colorBurn)
//               ),
//     ),
//   ),
//   placeholder: (context, url) => CircularProgressIndicator
//   (
//     // color: Appcolor.darkviolte6,
//   ),
//   errorWidget: (context, url, error) => Icon(Icons.error),
// ),
            CircleAvatar(
              backgroundImage: AssetImage(data.image),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              data.title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
