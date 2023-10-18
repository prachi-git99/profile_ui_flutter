import 'package:interview/consts/consts.dart';
import 'package:interview/widgets/heading.dart';
import 'package:interview/widgets/headingDescription.dart';
import 'package:interview/widgets/textfield.dart';
import 'package:interview/widgets/updateBtn.dart';

class BusinessVerificationScreen extends StatelessWidget {
  const BusinessVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 15,top: 25),
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
            margin: EdgeInsets.only(left: 15,right: 15,top: 20,),
            child: Column(
              children: [
                CustomTextField(title: instaLink,keytype: TextInputType.url),
                SizedBox(height: size.height/34,),
                CustomTextField(title: linkedinLink,keytype: TextInputType.url),
                SizedBox(height: size.height/34,),
                CustomTextField(title: fbLink,keytype: TextInputType.url),
                SizedBox(height: size.height/34,),
                CustomTextField(title: twitterLink,keytype: TextInputType.url),
                SizedBox(height: size.height/34,),
                CustomTextField(title: utubeLink,keytype: TextInputType.url),
              ],
            ),
          ),
        ),
        UpdateBtn(title:buttonTxt,context: context)




      ],
    );
  }
}