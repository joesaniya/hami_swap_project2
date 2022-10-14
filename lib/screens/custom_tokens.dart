import 'package:flutter/material.dart';

import '../theme/appcolors.dart';

class CustomTokens extends StatefulWidget {
  const CustomTokens({Key? key}) : super(key: key);

  @override
  State<CustomTokens> createState() => _CustomTokensState();
}

class _CustomTokensState extends State<CustomTokens> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 50,
            margin: const EdgeInsets.only(right: 15, left: 15),
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
                  hintText: '0x0000',
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
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '0 Custom Tokens',
                style: TextStyle(
                    color: Appcolor.sw_li_changes,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }
}
