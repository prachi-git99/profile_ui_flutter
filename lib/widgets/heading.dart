import 'package:interview/consts/consts.dart';

Widget Heading({String? title}){
  return Text(
    title!,
    style: TextStyle(
        fontSize:22, fontWeight: FontWeight.bold, color: Colors.black),
  );
}