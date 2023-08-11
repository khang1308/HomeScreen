import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddData extends StatefulWidget {
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

// Creating a Class and constructor.
class Method {
  late String title_Ctr;
  late String desc_Ctr;
  late int id;
  Method({required this.title_Ctr, required this.desc_Ctr, required id});
}

class _AddDataState extends State<AddData> {
  // Creating a TextEditingController for two Fiends,
  //one is for title TextField and second is for Description TextField.
  TextEditingController titleCtr = TextEditingController();
  TextEditingController descCtr = TextEditingController();

  // Creating a Method for Passing a data to back page.
  OnPressed(BuildContext context) {
    var data =
        Method(title_Ctr: titleCtr.text, desc_Ctr: descCtr.text, id: null);
    Navigator.pop(context, data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Add Data")),
        body: Form(child: Builder(builder: (context) {
          return Column(children: [
            TextFormField(
              controller: titleCtr,
              decoration: InputDecoration(hintText: "title"),
              validator: (value) {
                var newValue = value ?? "";
                if (newValue.isEmpty) {
                  return 'title is Required';
                }
                return null;
              },
            ),
            TextFormField(
              controller: descCtr,
              decoration: InputDecoration(hintText: "Description"),
              validator: (value) {
                var newValue = value ?? "";
                if (newValue.isEmpty) {
                  return 'Discription is Required';
                }
                return null;
              },
            ),
            MaterialButton(
              color: Colors.red,
              onPressed: () {
                if (Form.of(context)?.validate() ?? false) {
                  OnPressed(context);
                }
                // String selected = "Credit/Debit";
                // Navigator.pop(context, selected);
              },
              child: Text("Save"),
            )
          ]);
        })));
  }
}
