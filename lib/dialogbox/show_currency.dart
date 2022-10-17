import 'dart:developer';

import 'package:flutter/material.dart';

import '../helper/company_helper.dart';
import '../model/company.dart';
import '../theme/appcolors.dart';
import '../widgets/search_widgets.dart';
import 'dialog_helper.dart';

class ShowCurrency extends StatefulWidget {
  const ShowCurrency({Key? key}) : super(key: key);

  @override
  State<ShowCurrency> createState() => _ShowCurrencyState();
}

class _ShowCurrencyState extends State<ShowCurrency> {
  TextEditingController searchInputController = TextEditingController();
  List<Company> searchResult = CompanyHelper.SarchResultCompany;
  List<Company>? foundCompany;
  // List<Company>? foundCompany1;

  @override
  initState() {
    print('init');
    foundCompany = searchResult;
    // foundCompany1 = foundCompany1;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    print('runFilters');
    List results = [];
    if (enteredKeyword.isEmpty) {
      print('runFilters if');
      results = searchResult.cast<Map<String, dynamic>>();
    } else {
      print('runFilters else');
      results = searchResult
          .where((Company) => Company.title
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      print(results);
    }

    setState(() {
      print('set state');
      foundCompany = results.cast<Company>();
      // foundCompany1 = foundCompany1;
      // foundrecipe = searchResult;
    });
  }

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
        height: 570,
        decoration: BoxDecoration(
            color: Appcolor.cardbg,
            // color: currentTheme.isDark ? Colors.black : Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: const BorderRadius.all(Radius.circular(12))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Select Token',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    IconButton(
                        onPressed: () {
                          log('cancel');
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.cancel,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.only(right: 15, left: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(width: 2, color: Appcolor.sw_li_changes)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: TextField(
                    onChanged: (value) => _runFilter(value),
                    style: TextStyle(
                        color: Appcolor.sw_li_changes,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    maxLines: 1,
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      fillColor: Appcolor.search_txtfield_b,
                      filled: true,
                      hintText: 'Search Your Wallet',
                      hintStyle: TextStyle(
                        color: Appcolor.sw_li_changes,
                      ),
                      prefixIconConstraints:
                          const BoxConstraints(maxHeight: 20),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 17),
                      focusedBorder: InputBorder.none,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                ),
                child: Row(
                  children: [
                    const Text(
                      'Common bases',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
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
              ),

              const SizedBox(
                height: 10,
              ),

              Container(
                height: 40,
                width: 500,
                color: Colors.transparent,
                margin: const EdgeInsets.only(right: 15, left: 15),
                child: ListView.separated(
                    itemCount: foundCompany!.length,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 20,
                      );
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        height: 40,
                        // width: double.infinity,
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage(foundCompany![index].image),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              foundCompany![index].title,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      );
                    }),
                // child: ListView.builder(
                //   scrollDirection: Axis.horizontal,
                //   itemCount: 4,
                //   itemBuilder: (context, index) {
                //     return CompanyTile1(
                //       data: foundCompany![index],
                //     );
                //   },
                // ),
              ),

              //2
              foundCompany!.isNotEmpty
                  ? Container(
                      padding: const EdgeInsets.all(16.0),
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            //listview
                            ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: foundCompany!.length,
                              separatorBuilder: (context, index) {
                                return const SizedBox(
                                  height: 16,
                                );
                              },
                              itemBuilder: (context, index) {
                                return CompanyTile(
                                  data: foundCompany![index],
                                );
                              },
                            )
                          ],
                        ),
                      ),
                    )
                  : Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 70.0, horizontal: 40.0),
                      child: Center(
                        child: Text(
                          'No Results Found',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Appcolor.sw_li_changes),
                        ),
                      ),
                    ),

              GestureDetector(
                onTap: () {
                  log('Manage Tokens');
                  ManageTokensPage.exit(context);
                },
                child: Text(
                  'Manage Tokens',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Appcolor.cntbg),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      );
}
