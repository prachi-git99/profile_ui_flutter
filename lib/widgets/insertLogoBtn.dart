import 'package:interview/consts/consts.dart';

Widget InsertLogoBtn({context, imageUpload}){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    decoration: BoxDecoration(
      color: lightblue,
      borderRadius: const BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    child: InkWell(
      onTap: imageUpload,
      child: const Center(
        child: Text(
          "Insert Business Logo",
          style: TextStyle(
            color: buttonBlue,
            fontSize:16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ),
  );
}