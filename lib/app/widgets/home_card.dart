import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

class CardHome extends GetView {
  final String text;
  final String description;
  final Icon icon;
  final Function()? onTap;

  CardHome({
    required this.text,
    required this.description,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
          splashColor: Get.theme.splashColor,
          onTap: onTap,
          child: Container(
            height: 100,
            width: Get.width,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Get.theme.highlightColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: icon,
                    ),
                    VerticalDivider(
                      width: 10,
                      color: Colors.transparent,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: Get.width / 1.5,
                          child: Text(
                            text,
                            softWrap: true,
                            style: TextStyle(
                                color: Color.fromRGBO(120, 120, 120, 1),
                                fontWeight: FontWeight.w600,
                                fontSize:
                                    defaultFontSize / context.textScaleFactor),
                          ),
                        ),
                        Container(
                          width: Get.width / 1.5,
                          child: Text(
                            description,
                            style: TextStyle(
                                color: Color.fromRGBO(160, 160, 160, 1),
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    Get.theme.textTheme.headline6?.fontSize),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

class CardConsultas extends GetView {
  final String text;
  final String description;
  final Icon icon;
  final Function()? onTap;

  CardConsultas({
    required this.text,
    required this.description,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
          splashColor: Get.theme.splashColor,
          onTap: onTap,
          child: Container(
            height: 100,
            width: Get.width,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Get.theme.highlightColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: icon,
                    ),
                    VerticalDivider(
                      width: 10,
                      color: Colors.transparent,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: Get.width / 1.5,
                          child: Text(
                            text,
                            softWrap: true,
                            style: TextStyle(
                                color: Color.fromRGBO(120, 120, 120, 1),
                                fontWeight: FontWeight.w600,
                                fontSize:
                                    defaultFontSize / context.textScaleFactor),
                          ),
                        ),
                        Container(
                          width: Get.width / 1.5,
                          child: Text(
                            description,
                            style: TextStyle(
                                color: Color.fromRGBO(160, 160, 160, 1),
                                fontWeight: FontWeight.w400,
                                fontSize:
                                    Get.theme.textTheme.headline6?.fontSize),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
