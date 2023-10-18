import 'package:interview/consts/consts.dart';

Widget UpdateBtn({String? title,context}){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 15,vertical: 30),
    width: MediaQuery.of(context).size.width,
    height: 50,
    decoration: BoxDecoration(
      color: buttonBlue,
      borderRadius: const BorderRadius.all(
        Radius.circular(30),
      ),
    ),
    child: InkWell(
      onTap: () {},
      child: const Center(
        child: Text(
          buttonTxt,
          style: TextStyle(
            color: whiteColor,
            fontSize:18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
  );
}