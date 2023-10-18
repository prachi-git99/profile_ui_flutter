import 'package:interview/consts/consts.dart';
import 'package:interview/widgets/addLocationButton.dart';
import 'package:interview/widgets/dropdown.dart';
import 'package:interview/widgets/heading.dart';
import 'package:interview/widgets/headingDescription.dart';
import 'package:interview/widgets/textfield.dart';
import 'package:interview/widgets/updateBtn.dart';

class BusinessInfoScreen extends StatelessWidget {
  const BusinessInfoScreen({Key? key}) : super(key: key);

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
              Heading(title: businessInfo),
              HeadingDesc(desc:businessInfoDesc),
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 15,right: 15,top: 20,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownWidget(),
                SizedBox(height: size.height/34,),
                AddLocationButton(),
              ],
            ),
          ),
        ),
        UpdateBtn(title:buttonTxt,context: context)




      ],
    );
  }
}