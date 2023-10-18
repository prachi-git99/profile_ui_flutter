import 'package:interview/consts/consts.dart';

Widget AddLocationButton(){
  return ElevatedButton.icon(
    style: ElevatedButton.styleFrom(
      primary: blue,
      padding: EdgeInsets.all(12),
    ),
    onPressed: () {},
    icon: Icon(
      Icons.add,
      size: 24.0,
      color: whiteColor,
    ),
    label: Text(addLocation,style: TextStyle(color: whiteColor,fontSize: 16),),
  );
}