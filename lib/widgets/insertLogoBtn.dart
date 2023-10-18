import 'package:interview/consts/consts.dart';

Widget InsertLogoBtn(context){
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
      onTap: () {},
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