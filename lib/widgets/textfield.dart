import 'package:interview/consts/consts.dart';

Widget CustomTextField({String? title,context,keytype,controller,formkey,validator,onchange}){
  return Form(
    key:formkey,
    child: TextFormField(
      controller:controller ,
      onChanged: onchange,
      validator:validator,
      // (value){
      //   if(value == null || value.isEmpty ){
      //     return "Please Enter some Value";
      //   }
      //   return null;
      // },
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
    ),
  );
}