import 'package:interview/consts/consts.dart';
import 'package:interview/widgets/descTextField.dart';
import 'package:interview/widgets/heading.dart';
import 'package:interview/widgets/headingDescription.dart';
import 'package:interview/widgets/insertLogoBtn.dart';
import 'package:interview/widgets/logoImg.dart';
import 'package:interview/widgets/updateBtn.dart';

class BusinessAssetScreen extends StatelessWidget {
  const BusinessAssetScreen({Key? key}) : super(key: key);

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
              Heading(title: businesssAssets),
              HeadingDesc(desc: businesssAssetsDesc),
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 15,right: 15,top: 20,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InsertLogoBtn(context),
                SizedBox(height: size.height/34,),
                LogoImg(context),
                SizedBox(height: size.height/34,),
                DescTextField(title: dummyText)


              ],
            ),
          ),
        ),
        UpdateBtn(title:buttonTxt,context: context)




      ],
    );
  }
}