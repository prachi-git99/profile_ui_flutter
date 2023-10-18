import 'package:interview/consts/consts.dart';

Widget DropdownWidget(){
  String? _chosenValue;

  return InputDecorator(
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(25,25, 25, 0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      )
    ),
    child: DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: _chosenValue,
        isExpanded: true,
        isDense: true,
        hint: Text(
          familyOwnedBusin,
          style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        items: [
          DropdownMenuItem(child: Text(familyOwnedBusin), value: "Option 1"),
          DropdownMenuItem(child: Text("Text 2"), value: "Option 2"),
          DropdownMenuItem(child: Text("Text 3"), value: "Option3"),
        ],
        onChanged: (newValue){
        },

      ),
    )
  );
}


