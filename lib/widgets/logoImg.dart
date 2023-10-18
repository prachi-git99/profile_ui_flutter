import 'package:interview/consts/consts.dart';

Widget LogoImg(context) {
  var size = MediaQuery.of(context).size;
  return Container(
    height: size.height / 10,
    width: size.height / 10,
    child: Stack(
      children: [
        Image(
          fit: BoxFit.cover,
            image: NetworkImage(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Placeholder_view_vector.svg/310px-Placeholder_view_vector.svg.png")),
        Positioned(
          top: -10,
          right: -10,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.cancel),
          ),
        ),
      ],
    ),
  );
}
