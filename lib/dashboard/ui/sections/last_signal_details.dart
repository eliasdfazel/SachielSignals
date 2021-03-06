/*
 * Copyright © 2022 By Geeks Empire.
 *
 * Created by Elias Fazel
 * Last modified 7/30/22, 12:52 AM
 *
 * Licensed Under MIT License.
 * https://opensource.org/licenses/MIT
 */

import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:sachiel/data/signals_data_structure.dart';
import 'package:sachiel/resources/colors_resources.dart';
import 'package:sachiel/resources/strings_resources.dart';
import 'package:sachiel/utils/data/numbers.dart';

class LastSignalDetails extends StatefulWidget {

  const LastSignalDetails({Key? key}) : super(key: key);

  @override
  State<LastSignalDetails> createState() => _LastSignalDetailsState();
}
class _LastSignalDetailsState extends State<LastSignalDetails> {

  ScrollController scrollController = ScrollController();

  List<Widget> lastSignalDetails = [];

  @override
  void initState() {
    super.initState();

    retrieveLastSignalDetails();

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 399,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 37, 0, 13),
        child: ListView(
          padding: const EdgeInsets.fromLTRB(19, 0, 19, 0),
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          controller: scrollController,
          children: lastSignalDetails,
        )
      )
    );
  }

  void retrieveLastSignalDetails() async {

    // SignalsDataStructure signalsDataStructure = SignalsDataStructure(documentSnapshot);
    //
    // prepareLastSignalsDetails(signalsDataStructure);

    lastSignalDetails.add(overviewDetailsView());

    lastSignalDetails.add(technicalDetailsView());

    lastSignalDetails.add(shareDetailsView());

    setState(() {

      lastSignalDetails;

    });

  }

  void prepareLastSignalsDetails(SignalsDataStructure signalsDataStructure) {

    // lastSignalDetails.add(overviewDetailsView(signalsDataStructure));
    //
    // lastSignalDetails.add(technicalDetailsView(signalsDataStructure));
    //
    // lastSignalDetails.add(shareDetailsView(signalsDataStructure));

    setState(() {

      lastSignalDetails;

    });

  }

  Widget overviewDetailsView(/*SignalsDataStructure signalsDataStructure*/) {

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 37, 0),
      child: SizedBox(
        height: 399,
        width: 351,
        child: Stack(
          children: [
            Blur(
                blur: 5,
                blurColor: ColorsResources.premiumLight,
                borderRadius: BorderRadius.circular(19),
                colorOpacity: 0.07,
                alignment: Alignment.center,
                child: const SizedBox(
                  height: 399,
                  width: 351,
                )
            ),
            Positioned(
              top: -99,
              right: 33,
              child: Text(
                "%",
                style: TextStyle(
                  color: ColorsResources.black.withOpacity(0.17),
                  fontSize: 301,
                  fontFamily: "Handwriting"
                ),
              )
            ),
            Positioned(
                bottom: -19,
                left: 3,
                child: Transform.rotate(
                  angle: degreeToRadian(-19.0),
                  child: Text(
                    "\$",
                    style: TextStyle(
                        color: ColorsResources.black.withOpacity(0.17),
                        fontSize: 207,
                        fontFamily: "Handwriting"
                    ),
                  ),
                )
            ),
            Container(
              height: 399,
              width: 351,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(19),
                    topRight: Radius.circular(19),
                    bottomLeft: Radius.circular(19),
                    bottomRight: Radius.circular(19)
                ),
                border: Border(
                    top: BorderSide(
                      color: ColorsResources.black,
                      width: 1.3,
                    ),
                    bottom: BorderSide(
                      color: ColorsResources.black,
                      width: 1.3,
                    ),
                    left: BorderSide(
                      color: ColorsResources.black,
                      width: 1.3,
                    ),
                    right: BorderSide(
                      color: ColorsResources.black,
                      width: 1.3,
                    )
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(13, 13, 13, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        /* Start - Trade Command */
                        Column(
                          children: [
                            Text(
                              "SELL",
                              style: TextStyle(
                                  color: ColorsResources.sellColor,
                                  fontSize: 87,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                        color: ColorsResources.black.withOpacity(0.3),
                                        blurRadius: 19,
                                        offset: Offset(0, 5)
                                    )
                                  ]
                              ),
                            ),
                            Text(
                              "BTCUSD",
                              style: TextStyle(
                                  color: ColorsResources.premiumLight,
                                  fontSize: 47,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.3
                              ),
                            )
                          ],
                        ),
                        /* End - Trade Command */

                        /* Start - Trade Accuracy */
                        Padding(
                            padding: EdgeInsets.fromLTRB(9, 0, 0, 0),
                            child: const Text(
                              "93",
                              style: TextStyle(
                                  color: ColorsResources.white,
                                  fontSize: 101,
                                  shadows: [
                                    Shadow(
                                        color: ColorsResources.black,
                                        blurRadius: 13,
                                        offset: Offset(0.0, 3.0)
                                    )
                                  ]
                              ),
                            )
                        )
                        /* End - Trade Accuracy */

                      ],
                    ),
                    Container(
                      width: 351,
                      height: 113,
                      padding: const EdgeInsets.fromLTRB(0, 31, 0, 0),
                      alignment: Alignment.center,
                      child: Text(
                        "7,337.19",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: ColorsResources.premiumLight,
                          fontSize: 73,
                          letterSpacing: 1.3,
                          shadows: [
                            Shadow(
                              color: ColorsResources.black.withOpacity(0.5),
                              blurRadius: 11,
                              offset: const Offset(0.0, 3.0)
                            )
                          ]
                        ),
                      ),
                    ),
                  ],
                )
              )
            ),

            /* Start - Trade Time */
            Positioned(
              left: 13,
              bottom: 7,
              child: Container(
                width: 351,
                height: 59,
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 7),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Tue, July 7, 2022 - 17:13:37",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: ColorsResources.premiumLight,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            /* End - Trade Time */

            /* Start - Next Slide */
            Positioned(
              bottom: 7,
              right: 11,
              child: InkWell(
                onTap: () {

                  scrollController.jumpTo(387);

                },
                child: const Image(
                  image: AssetImage("next_icon.png"),
                  height: 37,
                  width: 37,
                )
              )
            )
            /* End - Next Slide */

          ]
        )
      )
    );
  }

  Widget technicalDetailsView(/*SignalsDataStructure signalsDataStructure*/) {

    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 37, 0),
        child: SizedBox(
            height: 399,
            width: 351,
            child: Stack(
                children: [
                  Blur(
                      blur: 5,
                      blurColor: ColorsResources.premiumLight,
                      borderRadius: BorderRadius.circular(19),
                      colorOpacity: 0.07,
                      alignment: Alignment.center,
                      child: const SizedBox(
                        height: 399,
                        width: 351,
                      )
                  ),

                  Container(
                      height: 399,
                      width: 351,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(19),
                            topRight: Radius.circular(19),
                            bottomLeft: Radius.circular(19),
                            bottomRight: Radius.circular(19)
                        ),
                        border: Border(
                            top: BorderSide(
                              color: ColorsResources.black,
                              width: 1.3,
                            ),
                            bottom: BorderSide(
                              color: ColorsResources.black,
                              width: 1.3,
                            ),
                            left: BorderSide(
                              color: ColorsResources.black,
                              width: 1.3,
                            ),
                            right: BorderSide(
                              color: ColorsResources.black,
                              width: 1.3,
                            )
                        ),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(13, 13, 13, 0),
                          child: Column(
                            children: [

                              /* Start - Trade Command */
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "SELL" " ",
                                      style: TextStyle(
                                          color: ColorsResources.sellColor,
                                          fontSize: 47,
                                          fontWeight: FontWeight.bold,
                                          shadows: [
                                            Shadow(
                                                color: ColorsResources.black.withOpacity(0.3),
                                                blurRadius: 19,
                                                offset: const Offset(0, 5)
                                            )
                                          ]
                                      ),
                                    ),
                                  ),
                                  const Align(
                                    alignment: Alignment.centerRight,
                                      child: Text(
                                        " " "BTCUSD",
                                        style: TextStyle(
                                            color: ColorsResources.premiumLight,
                                            fontSize: 47,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.5
                                        ),
                                      ),
                                  )
                                ],
                              ),
                              /* End - Trade Command */

                              const Divider(
                                height: 11,
                              ),

                              Container(
                                width: 351,
                                height: 31,
                                padding: const EdgeInsets.fromLTRB(0, 1, 0, 1),
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          StringsResources.accuracyText(),
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: ColorsResources.premiumLight.withOpacity(0.91),
                                              fontWeight: FontWeight.normal
                                          ),
                                        ),
                                      )
                                    ),
                                    const Expanded(
                                      flex: 1,
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Image(
                                          image: AssetImage("point_icon.png"),
                                          height: 19,
                                          fit: BoxFit.contain,
                                        ),
                                      )
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          "93%",
                                          style: TextStyle(
                                              fontSize: 19,
                                              color: ColorsResources.premiumLight.withOpacity(0.91),
                                              fontWeight: FontWeight.normal,
                                              shadows: [
                                                Shadow(
                                                    color: ColorsResources.black.withOpacity(0.59),
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3)
                                                )
                                              ]
                                          ),
                                        ),
                                      )
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 351,
                                height: 31,
                                padding: const EdgeInsets.fromLTRB(0, 1, 0, 1),
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            StringsResources.lotSizeText(),
                                            style: TextStyle(
                                                fontSize: 19,
                                                color: ColorsResources.premiumLight.withOpacity(0.91),
                                                fontWeight: FontWeight.normal
                                            ),
                                          ),
                                        )
                                    ),
                                    const Expanded(
                                        flex: 1,
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Image(
                                            image: AssetImage("point_icon.png"),
                                            height: 19,
                                            fit: BoxFit.contain,
                                          ),
                                        )
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "3000",
                                            style: TextStyle(
                                                fontSize: 19,
                                                color: ColorsResources.premiumLight.withOpacity(0.91),
                                                fontWeight: FontWeight.normal,
                                                shadows: [
                                                  Shadow(
                                                      color: ColorsResources.black.withOpacity(0.59),
                                                      blurRadius: 7,
                                                      offset: const Offset(0, 3)
                                                  )
                                                ]
                                            ),
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 351,
                                height: 31,
                                padding: const EdgeInsets.fromLTRB(0, 1, 0, 1),
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            StringsResources.earningsText(),
                                            style: TextStyle(
                                                fontSize: 19,
                                                color: ColorsResources.premiumLight.withOpacity(0.91),
                                                fontWeight: FontWeight.normal
                                            ),
                                          ),
                                        )
                                    ),
                                    const Expanded(
                                        flex: 1,
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Image(
                                            image: AssetImage("point_icon.png"),
                                            height: 19,
                                            fit: BoxFit.contain,
                                          ),
                                        )
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "~" " " "\$7,337",
                                            style: TextStyle(
                                                fontSize: 19,
                                                color: ColorsResources.premiumLight.withOpacity(0.91),
                                                fontWeight: FontWeight.normal,
                                                shadows: [
                                                  Shadow(
                                                      color: ColorsResources.black.withOpacity(0.59),
                                                      blurRadius: 7,
                                                      offset: const Offset(0, 3)
                                                  )
                                                ]
                                            ),
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              ),

                              const Divider(
                                height: 15,
                              ),

                              Container(
                                width: 351,
                                height: 31,
                                padding: const EdgeInsets.fromLTRB(0, 1, 0, 1),
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            StringsResources.entryPriceText(),
                                            style: TextStyle(
                                                fontSize: 19,
                                                color: ColorsResources.entryPriceColor.withOpacity(0.91),
                                                fontWeight: FontWeight.normal
                                            ),
                                          ),
                                        )
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Image(
                                            image: const AssetImage("point_icon.png"),
                                            color: ColorsResources.entryPriceColor.withOpacity(0.91),
                                            height: 19,
                                            fit: BoxFit.contain,
                                          ),
                                        )
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "\$195,921",
                                            style: TextStyle(
                                                fontSize: 19,
                                                color: ColorsResources.entryPriceColor.withOpacity(0.91),
                                                fontWeight: FontWeight.normal,
                                                shadows: [
                                                  Shadow(
                                                      color: ColorsResources.black.withOpacity(0.59),
                                                      blurRadius: 7,
                                                      offset: const Offset(0, 3)
                                                  )
                                                ]
                                            ),
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 351,
                                height: 31,
                                padding: const EdgeInsets.fromLTRB(0, 1, 0, 1),
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            StringsResources.takeProfitText(),
                                            style: TextStyle(
                                                fontSize: 19,
                                                color: ColorsResources.takeProfitColor.withOpacity(0.91),
                                                fontWeight: FontWeight.normal
                                            ),
                                          ),
                                        )
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Image(
                                            image: const AssetImage("point_icon.png"),
                                            color: ColorsResources.takeProfitColor.withOpacity(0.91),
                                            height: 19,
                                            fit: BoxFit.contain,
                                          ),
                                        )
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "\$200,000",
                                            style: TextStyle(
                                                fontSize: 19,
                                                color: ColorsResources.takeProfitColor.withOpacity(0.91),
                                                fontWeight: FontWeight.normal,
                                                shadows: [
                                                  Shadow(
                                                      color: ColorsResources.black.withOpacity(0.59),
                                                      blurRadius: 7,
                                                      offset: const Offset(0, 3)
                                                  )
                                                ]
                                            ),
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 351,
                                height: 31,
                                padding: const EdgeInsets.fromLTRB(0, 1, 0, 1),
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            StringsResources.stopLossText(),
                                            style: TextStyle(
                                                fontSize: 19,
                                                color: ColorsResources.stopLossColor.withOpacity(0.91),
                                                fontWeight: FontWeight.normal
                                            ),
                                          ),
                                        )
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Image(
                                            image: const AssetImage("point_icon.png"),
                                            color: ColorsResources.stopLossColor.withOpacity(0.91),
                                            height: 19,
                                            fit: BoxFit.contain,
                                          ),
                                        )
                                    ),
                                    Expanded(
                                        flex: 1,
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            "\$195,310",
                                            style: TextStyle(
                                                fontSize: 19,
                                                color: ColorsResources.stopLossColor.withOpacity(0.91),
                                                fontWeight: FontWeight.normal,
                                                shadows: [
                                                  Shadow(
                                                      color: ColorsResources.black.withOpacity(0.59),
                                                      blurRadius: 7,
                                                      offset: const Offset(0, 3)
                                                  )
                                                ]
                                            ),
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          )
                      )
                  ),

                  /* Start - Trade Timeframe */
                  Positioned(
                    left: 13,
                    bottom: 27,
                    child: Container(
                    width: 351,
                    height: 39,
                    padding: const EdgeInsets.fromLTRB(0, 1, 0, 1),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Daily",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: ColorsResources.premiumLight,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          shadows: [
                            Shadow(
                                color: ColorsResources.black.withOpacity(0.5),
                                blurRadius: 11,
                                offset: const Offset(0.0, 3.0)
                            )
                          ]
                      ),
                    ),
                  ),
                  ),
                  /* End - Trade Timeframe */

                  /* Start - Trade Time */
                  Positioned(
                    left: 13,
                    bottom: 7,
                    child: Container(
                      width: 351,
                      height: 59,
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 7),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Tue, July 7, 2022 - 17:13:37",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: ColorsResources.premiumLight,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  /* End - Trade Time */

                  /* Start - Next Slide */
                  Positioned(
                      bottom: 7,
                      right: 11,
                      child: InkWell(
                          onTap: () {

                            scrollController.jumpTo(775);

                          },
                          child: const Image(
                            image: AssetImage("next_icon.png"),
                            height: 37,
                            width: 37,
                          )
                      )
                  )
                  /* End - Next Slide */

                ]
            )
        )
    );
  }

  Widget shareDetailsView(/*SignalsDataStructure signalsDataStructure*/) {

    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 37, 0),
        child: SizedBox(
            height: 399,
            width: 351,
            child: Stack(
                children: [
                  Blur(
                      blur: 5,
                      blurColor: ColorsResources.premiumLight,
                      borderRadius: BorderRadius.circular(19),
                      colorOpacity: 0.07,
                      alignment: Alignment.center,
                      child: const SizedBox(
                        height: 399,
                        width: 351,
                      )
                  ),

                  InkWell(
                    onTap: () {

                      /*
                       * Share Signal Data as A Snapshot (Design Share Snapshot Widget)
                       */

                    },
                    child: Container(
                        height: 399,
                        width: 351,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(19),
                              topRight: Radius.circular(19),
                              bottomLeft: Radius.circular(19),
                              bottomRight: Radius.circular(19)
                          ),
                          border: Border(
                              top: BorderSide(
                                color: ColorsResources.black,
                                width: 1.3,
                              ),
                              bottom: BorderSide(
                                color: ColorsResources.black,
                                width: 1.3,
                              ),
                              left: BorderSide(
                                color: ColorsResources.black,
                                width: 1.3,
                              ),
                              right: BorderSide(
                                color: ColorsResources.black,
                                width: 1.3,
                              )
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(0, 27, 0, 0),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Image(
                              image: AssetImage("share_icon.png"),
                              height: 233,
                              width: 233,
                              fit: BoxFit.contain,
                            ),
                          ),
                        )
                    ),
                  ),

                  Positioned(
                    bottom: 31,
                    left: 13,
                    right: 13,
                    child: Text(
                      StringsResources.shareSachiel(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorsResources.light,
                        fontSize: 23,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1.7,
                        shadows: [
                          Shadow(
                            color: ColorsResources.goldenColor.withOpacity(0.31),
                            blurRadius: 7,
                            offset: const Offset(0, 3)
                          )
                        ]
                      ),
                    ),
                  )

                ]
            )
        )
    );
  }

}
