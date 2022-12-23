import 'package:flutter/material.dart';

import '../../myUtils/utils.dart';
class MyTextField2 extends StatelessWidget {
  TextEditingController editingController;
  bool enableOrDisable;
  String hints;
  String errorMessage;
  Icon icon;
  TextInputType inputType;
  bool isRequired;
  double h;

  MyTextField2({
    required this.editingController,
    required this.enableOrDisable,
    required this.hints,
    required this.errorMessage,
    required this.icon,
    required this.inputType,
    required this.isRequired,
    required this.h
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      // color: Colors.red,
      height: h,
      // margin: EdgeInsets.only(left: 10, right: 10 ),
      child: TextFormField(

        keyboardType: TextInputType.multiline,
        minLines: 1,//Normal textInputField will be displayed
        maxLines: 3,

        enabled: enableOrDisable,
        // keyboardType: inputType,
        style: SafeGoogleFont (
          'Aeroport',

          fontWeight: FontWeight.w400,
          color: Color(0xff0c1026),
        ),
        cursorColor: Colors.black,
        controller: editingController,

        decoration: InputDecoration(

          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),

          contentPadding: EdgeInsets.only(top: 0, left: 5),
          errorStyle: TextStyle(
            fontSize: 16.0,
            color: Colors.red,

          ),
          errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          //
          focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          fillColor: Colors.white,
          filled: true,
          hintText: hints,
          labelStyle: TextStyle(fontSize: 14 ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),


          border: OutlineInputBorder(),
          disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          // prefixIcon: icon,

          // label: Text('Email or Mobile No.', style: TextStyle(color: AppConstant.mySecondaryColor(), fontSize: 15),),

        ),
        onChanged: (v){

        },
        validator: (v){
          if(isRequired==true){
            if (v!.isEmpty)
              return errorMessage;
          }else{
            return null;
          }


          return null;
        },
      ),
    );
  }
}
