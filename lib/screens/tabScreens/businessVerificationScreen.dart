import 'dart:developer';

import 'package:interview/consts/consts.dart';
import 'package:interview/widgets/heading.dart';
import 'package:interview/widgets/headingDescription.dart';
import 'package:interview/widgets/textfield.dart';
import 'package:interview/widgets/updateBtn.dart';

class BusinessVerificationScreen extends StatefulWidget {
  const BusinessVerificationScreen({Key? key}) : super(key: key);

  @override
  State<BusinessVerificationScreen> createState() =>
      _BusinessVerificationScreenState();
}

class _BusinessVerificationScreenState
    extends State<BusinessVerificationScreen> {
  TextEditingController InstaController = TextEditingController();
  TextEditingController LinkdinController = TextEditingController();
  TextEditingController FbController = TextEditingController();
  TextEditingController TwitterController = TextEditingController();
  TextEditingController UtubeController = TextEditingController();

  GlobalKey<FormState> _formkey1 = GlobalKey<FormState>();
  GlobalKey<FormState> _formkey2 = GlobalKey<FormState>();
  GlobalKey<FormState> _formkey3 = GlobalKey<FormState>();
  GlobalKey<FormState> _formkey4 = GlobalKey<FormState>();
  GlobalKey<FormState> _formkey5 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 15, top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Heading(title: businessVerify),
              HeadingDesc(desc: businessVerifyDesc),
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
                    title: instaLink,
                    keytype: TextInputType.url,
                    context: context,
                    validator: (value) {
                      String pattern = r'(http|https)://[\w-]+(\.[\w-]+)+([\w.,@?^=%&amp;:/~+#-]*[\w@?^=%&amp;/~+#-])?';
                      RegExp regExp = new RegExp(pattern);
                      if (!regExp.hasMatch(value)) {
                        return 'Please enter valid url';
                      }
                      return null;
                    },
                    formkey: _formkey1,
                    controller: InstaController),
                SizedBox(
                  height: size.height / 34,
                ),
                CustomTextField(
                    title: linkedinLink,
                    keytype: TextInputType.url,
                    context: context,
                    validator: (value) {
                      String pattern = r'(http|https)://[\w-]+(\.[\w-]+)+([\w.,@?^=%&amp;:/~+#-]*[\w@?^=%&amp;/~+#-])?';
                      RegExp regExp = new RegExp(pattern);
                      if (!regExp.hasMatch(value)) {
                        return 'Please enter valid url';
                      }
                      return null;
                    },
                    formkey: _formkey2,
                    controller: LinkdinController),
                SizedBox(
                  height: size.height / 34,
                ),
                CustomTextField(title: fbLink,
                    context: context,
                    validator: (value) {
                      String pattern = r'(http|https)://[\w-]+(\.[\w-]+)+([\w.,@?^=%&amp;:/~+#-]*[\w@?^=%&amp;/~+#-])?';
                      RegExp regExp = new RegExp(pattern);
                      if (!regExp.hasMatch(value)) {
                        return 'Please enter valid url';
                      }
                      return null;
                    },
                    formkey: _formkey3,
                    controller: FbController,
                    keytype: TextInputType.url),
                SizedBox(
                  height: size.height / 34,
                ),
                CustomTextField(title: twitterLink,
                    context: context,
                    validator: (value) {
                      String pattern = r'(http|https)://[\w-]+(\.[\w-]+)+([\w.,@?^=%&amp;:/~+#-]*[\w@?^=%&amp;/~+#-])?';
                      RegExp regExp = new RegExp(pattern);
                      if (!regExp.hasMatch(value)) {
                        return 'Please enter valid url';
                      }
                      return null;
                    },
                    formkey: _formkey4,
                    controller: TwitterController,
                    keytype: TextInputType.url),
                SizedBox(
                  height: size.height / 34,
                ),
                CustomTextField(title: utubeLink,
                    context: context,
                    validator: (value) {
                      String pattern = r'(http|https)://[\w-]+(\.[\w-]+)+([\w.,@?^=%&amp;:/~+#-]*[\w@?^=%&amp;/~+#-])?';
                      RegExp regExp = new RegExp(pattern);
                      if (!regExp.hasMatch(value)) {
                        return 'Please enter valid url';
                      }
                      return null;
                    },
                    formkey: _formkey5,
                    controller: UtubeController,
                    keytype: TextInputType.url),
              ],
            ),
          ),
        ),
        UpdateBtn(
            title: buttonTxt,
            context: context,
            onSave: (){
              if (_formkey1.currentState!.validate() &&
                  _formkey2.currentState!.validate() &&
                  _formkey3.currentState!.validate() &&
                  _formkey4.currentState!.validate() &&
                  _formkey5.currentState!.validate()) {
                submitForm(InstaController,LinkdinController,FbController,TwitterController,UtubeController);
              }
            }

        ),
      ],
    );
  }
}

void submitForm(
    TextEditingController InstaController,
    TextEditingController LinkedinController,
    TextEditingController FbController,
    TextEditingController TwitterController,
    TextEditingController UtubeController) {
  var data = {
    "InstaLink": InstaController.text,
    "LinkedinLink": LinkedinController.text,
    "FbLink": FbController.text,
    "TwitterLink": TwitterController.text,
    "YoutubeLink": UtubeController.text,

  };
  log('$data');
}