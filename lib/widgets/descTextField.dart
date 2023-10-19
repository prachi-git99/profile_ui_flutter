import 'package:interview/consts/consts.dart';

Widget DescTextField({String? title,context,controller}){
  return TextField(
    controller: controller,
    maxLines: 4,
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

      hintText:title!,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
            width: 2, color: bordergrey),
      ),
    ),
  );
}