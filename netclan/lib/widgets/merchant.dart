
import 'package:flutter/material.dart';
import 'package:netclan/widgets/search_bar.dart';
import '../../../data/explore_list.dart';

class Merchant extends StatefulWidget {
  const Merchant({super.key});

  @override
  State<Merchant> createState() => _MerchantState();
}

class _MerchantState extends State<Merchant> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 8,
                      child: searchBar(),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.filter_alt_outlined,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              // This is the list of Cards for MERCHANT Catagory Persons
              Container(
                  height: 588,
                  child: ListView.builder(
                    itemCount: ExploreListItems.merchantitemsList.length,
                    itemBuilder: (context, index) {
                      if (ExploreListItems.merchantitemsList[index]
                      ['catagory'] ==
                          'MERCHANT') {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          child: Container(
                            // color: Colors.black,
                            width: 350,
                            height: 200,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 2,
                                          offset: const Offset(1, 0),
                                        ),
                                      ],
                                      // border: Border.all(width: 1),
                                      borderRadius: BorderRadius.circular(32),
                                    ),
                                    width: 315,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        // color: Colors.green,
                                          borderRadius:
                                          BorderRadius.circular(32)),
                                      width: double.infinity,
                                      height: 110,
                                      child: Column(
                                        children: [
                                          const Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding:
                                                EdgeInsets.only(right: 18),
                                                child: Text(
                                                  '',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    clipBehavior:
                                                    Clip.antiAlias,
                                                    alignment: Alignment.center,
                                                    height: 85,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          18),
                                                    ),
                                                    child: Image.network(
                                                      ExploreListItems
                                                          .merchantitemsList[
                                                      index]['image'],
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20),
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceEvenly,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      ExploreListItems
                                                          .merchantitemsList[
                                                      index]['name'],
                                                      style: const TextStyle(
                                                          color:
                                                          Color(0xff234a64),
                                                          fontSize: 18,
                                                          fontWeight:
                                                          FontWeight.bold,
                                                          overflow: TextOverflow
                                                              .ellipsis),
                                                    ),
                                                    Text(
                                                      ExploreListItems
                                                          .merchantitemsList[
                                                      index]['location'],
                                                      style: const TextStyle(
                                                        color:
                                                        Color(0xff214863),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 5),
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                            const EdgeInsets
                                                                .only(
                                                                right: 15),
                                                            child: CircleAvatar(
                                                              radius: 18,
                                                              backgroundColor:
                                                              const Color
                                                                  .fromARGB(
                                                                  255,
                                                                  6,
                                                                  46,
                                                                  51),
                                                              child: Icon(
                                                                ExploreListItems
                                                                    .merchantitemsList[
                                                                index][
                                                                'icons'][0],
                                                                size: 20,
                                                              ),
                                                            ),
                                                          ),
                                                          CircleAvatar(
                                                            radius: 18,
                                                            backgroundColor:
                                                            const Color
                                                                .fromARGB(
                                                                255,
                                                                6,
                                                                46,
                                                                51),
                                                            child: Icon(
                                                              ExploreListItems
                                                                  .merchantitemsList[
                                                              index]
                                                              ['icons'][1],
                                                              size: 20,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        // color: Colors.blue,
                                          borderRadius:
                                          BorderRadius.circular(32)),
                                      height: 90,
                                      width: 300,
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 2, horizontal: 5),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    ExploreListItems
                                                        .merchantitemsList[
                                                    index]['about'],
                                                    softWrap: true,
                                                    maxLines: 2,
                                                    style: const TextStyle(
                                                        color:
                                                        Color(0xff214863),
                                                        fontSize: 16,
                                                        fontWeight:
                                                        FontWeight.w600),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 0, horizontal: 5),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    ExploreListItems
                                                        .merchantitemsList[
                                                    index]['description'],
                                                    style: const TextStyle(
                                                      color: Color(0xff214863),
                                                    ),
                                                    softWrap: true,
                                                    maxLines: 6,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      } else {
                        return null;
                      }
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}