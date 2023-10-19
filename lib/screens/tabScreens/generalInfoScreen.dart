import 'dart:developer';

import 'package:interview/consts/consts.dart';
import 'package:interview/widgets/heading.dart';
import 'package:interview/widgets/headingDescription.dart';
import 'package:interview/widgets/textfield.dart';
import 'package:interview/widgets/updateBtn.dart';

class GeneralInfoScreen extends StatefulWidget {
  const GeneralInfoScreen({Key? key}) : super(key: key);

  @override
  State<GeneralInfoScreen> createState() => _GeneralInfoScreenState();
}

class _GeneralInfoScreenState extends State<GeneralInfoScreen> {
  TextEditingController businessNameController = TextEditingController();
  TextEditingController businessWebsiteController = TextEditingController();
  TextEditingController businessAddressController = TextEditingController();
  TextEditingController businessPhoneController = TextEditingController();

  GlobalKey<FormState> _formkey1 = GlobalKey<FormState>();
  GlobalKey<FormState> _formkey2 = GlobalKey<FormState>();
  GlobalKey<FormState> _formkey3 = GlobalKey<FormState>();
  GlobalKey<FormState> _formkey4 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 15, top: 25),
          child: Column(
            children: [
              Heading(title: generalInfo),
              HeadingDesc(desc: generalInfoDesc),
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 20,
            ),
            child: Column(
              children: [
                CustomTextField(
                    title: businessName,
                    controller: businessNameController,
                    context: context,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter some Value";
                      }
                      return null;
                    },
                    formkey: _formkey1),
                SizedBox(
                  height: size.height / 34,
                ),
                CustomTextField(
                    title: businessEmail,
                    context: context,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter some Value";
                      }
                      return null;
                    },
                    controller: businessWebsiteController,
                    formkey: _formkey2),
                SizedBox(
                  height: size.height / 34,
                ),
                CustomTextField(
                    title: businessAddress,
                    context: context,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter some Value";
                      }
                      return null;
                    },
                    controller: businessAddressController,
                    formkey: _formkey3),
                SizedBox(
                  height: size.height / 34,
                ),
                CustomTextField(
                    title: businessphone,
                    context: context,
                    validator: (value) {
                      if (value.length != 10) {
                        return "Please Enter Valid mobile";
                      }
                      return null;
                    },
                    keytype: TextInputType.phone,
                    controller: businessPhoneController,
                    formkey: _formkey4),
              ],
            ),
          ),
        ),
        UpdateBtn(
            title: buttonTxt,
            context: context,
            onSave: () {
              if (_formkey1.currentState!.validate() &&
                  _formkey2.currentState!.validate() &&
                  _formkey3.currentState!.validate() &&
                  _formkey4.currentState!.validate()) {
                submitForm(businessNameController, businessWebsiteController,
                    businessAddressController, businessPhoneController);
              }
              businessNameController.clear();
              businessWebsiteController.clear();
              businessAddressController.clear();
              businessPhoneController.clear();
            })
      ],
    );
  }
}

void submitForm(
    TextEditingController nameController,
    TextEditingController websiteController,
    TextEditingController addressController,
    TextEditingController phoneController) {
  var data = {
    "businessName": nameController.text,
    "businessWebsite": websiteController.text,
    "businessAddress": addressController.text,
    "businessPhone": phoneController.text
  };
  log('$data');
}
