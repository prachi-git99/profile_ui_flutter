import 'package:interview/consts/consts.dart';

Widget CustomTextField({String? title,keytype}){
  return TextField(
    keyboardType: keytype,
    decoration: InputDecoration(
      hintStyle: TextStyle(
        color: Colors.grey,
      ),
      isDense: true,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: blue,
            )
        ),
      contentPadding: EdgeInsets.fromLTRB(25,25, 25, 0),
      hintText:title!,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
            width: 2, color: bordergrey),
      ),
    ),
  );
}