import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Sharedhelper/spHelper.dart';
import 'package:flutter_application_1/regeister/Country.dart';
import 'package:flutter_application_1/regeister/CustomCheckbox.dart';
import 'package:flutter_application_1/regeister/customfTextfield.dart';

import 'package:string_validator/string_validator.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  requiredValeditor(String v) {
    if (v.isEmpty) {
      return "required field";
    }
  }

  String? emailValeditor(String v) {
    if (!isEmail(v)) {
      return "must be an email sentac";
    }
  }

  String? PhoneValeditor(String v) {
    if (v.length < 9 || v.length > 10) {
      return "phone number must be between 9 & 10";
    }
  }

  String? Checkboxacept(bool? v) {
    if (!(v ?? true)) {
      return "must cheack and acept conditions";
    }
  }

  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  GlobalKey<FormState> resisterkey = GlobalKey();
  Country? slectedcountry;
  String? slectedcity;
  String? countrycode;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text('Register')),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Form(
            key: resisterkey,
            child: Column(
              children: [
                CustomTextfield("name", requiredValeditor, namecontroller,
                    TextInputType.name),
                SizedBox(
                  height: 5,
                ),
                CustomTextfield("email", emailValeditor, emailcontroller,
                    TextInputType.emailAddress),
                SizedBox(
                  height: 5,
                ),
                CustomTextfield(
                  "phone",
                  PhoneValeditor,
                  phonecontroller,
                  TextInputType.phone,
                  CountryCodePicker(
                    onChanged: (v) {
                      countrycode = v.dialCode;
                    },
                    // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                    initialSelection: 'PS',
                    showCountryOnly: false,
                    showFlagDialog: true,
                    alignLeft: false,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButton<Country>(
                      isExpanded: true, //ياخد كل مساحة الصفحة
                      value: slectedcountry,
                      underline: SizedBox(),
                      items: countries.map((e) {
                        return DropdownMenuItem<Country>(
                          value: e,
                          child: Text(e.name),
                        );
                      }).toList(),
                      onChanged: (v) {
                        slectedcountry = v;
                        slectedcity = v!.cities.first; //or null
                        setState(() {});
                      }),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButton<String>(
                      isExpanded: true, //ياخد كل مساحة الصفحة
                      value: slectedcity,
                      underline: SizedBox(),
                      items: slectedcountry?.cities.map((e) {
                        return DropdownMenuItem<String>(
                          value: e,
                          child: Text(e),
                        );
                      }).toList(),
                      onChanged: (v) {
                        slectedcity = v;
                        setState(() {});
                      }),
                ),
                CustomCheckbox(Checkboxacept),
                ElevatedButton(
                    onPressed: () {
                      if (resisterkey.currentState!.validate()) {
                        SpHelper.spHelper.SavednewUser(
                            namecontroller.text,
                            emailcontroller.text,
                            (countrycode ?? "059") + phonecontroller.text,
                            slectedcountry?.name ?? "",
                            slectedcity ?? "");
                      }
                      SpHelper.spHelper.getUser();
                    },
                    child: Text("Resister"))
              ],
            ),
          ),
        ));
  }
}
