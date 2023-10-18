import 'package:interview/consts/consts.dart';

Widget HeadingDesc({String? desc}){
  return Text(
    desc!,
    style: TextStyle(
        fontSize:16, fontWeight: FontWeight.normal, color:fontgrey),
  );
}