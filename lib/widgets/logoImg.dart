import 'package:interview/consts/consts.dart';

Widget LogoImg({context,imageFile}) {
  var size = MediaQuery.of(context).size;
  return Container(
    height: size.height/10,
    width: size.width /4,
    child: Stack(
      children: [
        (imageFile!=null) ? Container(
          height: size.height,
          width: size.width,
          child: Image.file(
            imageFile!,
            fit: BoxFit.cover,
          ),
        ):Container(
          height: size.height,
          width: size.width,
          color: Colors.grey,
          child: Center(
            child: Text("Image Here"),
          ),
        ),
        Positioned(
          top: -10,
          right: -10,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.cancel,color:blueColor,),
          ),
        ),
      ],
    ),
  );
}
