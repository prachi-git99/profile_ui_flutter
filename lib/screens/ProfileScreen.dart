import 'package:interview/consts/consts.dart';
import 'package:interview/screens/tabScreens/businessAssetsScreen.dart';
import 'package:interview/screens/tabScreens/businessInfoScreen.dart';
import 'package:interview/screens/tabScreens/businessVerificationScreen.dart';
import 'package:interview/screens/tabScreens/generalInfoScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: DefaultTabController(
          length: 4,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              backgroundColor: whiteColor,
              title: Text(profile,style: TextStyle(
                  fontSize:22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),),
              leading:Center(
                child: Container(
                  height:25,
                  width:25,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: blueColor
                  ),
                  child: IconButton(
                    onPressed: () {
                    },
                    icon: Icon(Icons.arrow_back_ios,color: whiteColor,size:14,weight:600,),
                  ),
                ),
              ),
              bottom: TabBar(
                isScrollable: true,
                unselectedLabelColor: greyColor,
                indicatorColor: blueColor,
                labelStyle:TextStyle(fontWeight: FontWeight.w500,fontSize: 16),
                labelColor: blueColor,
                tabs: [
                  Tab(text: generalInfo),
                  Tab(text:businessInfo),
                  Tab(text: businesssAssets),
                  Tab(text: businessVerify)
                ],
              ),
            ),

            body: TabBarView(
              children: [
                GeneralInfoScreen(),
                BusinessInfoScreen(),
                BusinessAssetScreen(),
                BusinessVerificationScreen()
              ],
            ),


          ),
        ),
    );
  }
}
