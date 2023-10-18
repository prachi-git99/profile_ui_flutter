import 'package:interview/consts/consts.dart';
import 'package:interview/widgets/heading.dart';
import 'package:interview/widgets/headingDescription.dart';
import 'package:interview/widgets/textfield.dart';
import 'package:interview/widgets/updateBtn.dart';

class GeneralInfoScreen extends StatelessWidget {
  const GeneralInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 15,top: 25),
          child: Column(
              children: [
                Heading(title: generalInfo),
                HeadingDesc(desc: generalInfoDesc),
              ],
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 15,right: 15,top: 20,),
            child: Column(
              children: [
                CustomTextField(title: burgerKing,keytype: TextInputType.name),
                SizedBox(height: size.height/34,),
                CustomTextField(title: burgerKingEmail,keytype: TextInputType.emailAddress),
                SizedBox(height: size.height/34,),
                CustomTextField(title: address,keytype: TextInputType.streetAddress),
                SizedBox(height: size.height/34,),
                CustomTextField(title: phone,keytype:TextInputType.phone),
              ],
            ),
          ),
        ),
        UpdateBtn(title:buttonTxt,context: context)




      ],
    );
  }
}
