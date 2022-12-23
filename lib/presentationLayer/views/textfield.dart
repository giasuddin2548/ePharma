import 'package:ephrama/myUtils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitleDataWidget extends StatelessWidget {
  String title;
  Widget data;
  String titleAlignment;
  String dataAlignment;


  TitleDataWidget({
    required this.title,
    required this.data,
    required this.titleAlignment,
    required this.dataAlignment
  });
  var te=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //title
            Container(
              alignment: Alignment.centerLeft,
              width: 30 / 100 * Get.size.width,
              constraints: const BoxConstraints(minHeight: 40),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft:  Radius.circular(5),
                ),
                color: Colors.white,
              ),
              child: Text(
                title,
                style: SafeGoogleFont (
                  'Aeroport',

                  fontWeight: FontWeight.w400,

                  color: Color(0xff0c1026),
                ),
                textAlign: TextAlign.left,
              ),
            ),

            //data
            Container(
                alignment: dataAlignment=='center'? Alignment.center:dataAlignment=='left'?Alignment.centerLeft:Alignment.centerRight,
                width: 70 / 100 * Get.size.width,
                margin: const EdgeInsets.only(left: 10),
                constraints: const BoxConstraints(minHeight: 40),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight:  Radius.circular(5),
                  ),
                  color:Colors.white,
                ),
                child: data
              // child: Text(
              //   data,
              //   textAlign: dataAlignment=='center'? TextAlign.center:dataAlignment=='left'?TextAlign.left:TextAlign.right,
              //   style: TextStyle(fontSize: 15),
              // ),
            )
          ],
        ),
      ),
    );
  }
}
