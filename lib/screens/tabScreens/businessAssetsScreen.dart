import 'dart:developer';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:interview/consts/consts.dart';
import 'package:interview/widgets/descTextField.dart';
import 'package:interview/widgets/heading.dart';
import 'package:interview/widgets/headingDescription.dart';
import 'package:interview/widgets/insertLogoBtn.dart';
import 'package:interview/widgets/logoImg.dart';
import 'package:interview/widgets/updateBtn.dart';

class BusinessAssetScreen extends StatefulWidget {
  const BusinessAssetScreen({Key? key}) : super(key: key);

  @override
  State<BusinessAssetScreen> createState() => _BusinessAssetScreenState();
}

class _BusinessAssetScreenState extends State<BusinessAssetScreen> {
  final ImagePicker _picker = ImagePicker();
  TextEditingController descController = TextEditingController();

  File? image;

  Future imgFromGallery() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if(image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }
  Future imgFromCamera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if(image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }

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
                InsertLogoBtn(context:context,imageUpload:(){
                  // imgFromGallery();
                  _showPicker(context);
                } ),
                SizedBox(height: size.height/34,),
                LogoImg(context:context,imageFile: image),
                SizedBox(height: size.height/34,),
                DescTextField(title: dummyText,controller: descController,
                  context: context,)
              ],
            ),
          ),
        ),
        UpdateBtn(title:buttonTxt,context: context,onSave: (){
          var data = {
            "businessDescription" : descController.text,
            "imageUrl":image
          };
          log("$data");
          descController.clear();
        })
      ],
    );
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Gallery'),
                      onTap: () {
                        imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
