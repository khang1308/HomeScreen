import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'addtaskcreen.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  List<Method> items = [];

  List<Color> colors = [
    Colors.pinkAccent,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.purple,
  ];
  void _handleOnclick() {
    print("_handleOnclick");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.only(left: 100),
          child: Text(
            'Home',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.of(context).pushNamed('/SC5');
          if (result != null) {
            items.add(result as Method);
          }
          setState(() {});
          print(" result ${(result as Method).desc_Ctr}");
        },
        child: Icon(Icons.add),
      ),
      body: items.isNotEmpty
          ? Column(children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: ((context, index) {
                        return Container(
                          margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                          padding: EdgeInsets.only(left: 10, right: 10),
                          height: 80,
                          decoration: BoxDecoration(
                              color: colors[(index % colors.length)]
                                  .withOpacity(0.8),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: ListTile(
                              title: Text(items[index].title_Ctr),
                              subtitle: Text(items[index].desc_Ctr),
                              leading: Icon(Icons.person),
                              trailing: InkWell(
                                  onTap: () async {
                                    setState(() {
                                      items.removeAt(index);
                                    });
                                  },
                                  child: Icon(Icons.delete)),
                            ),
                          ),
                        );
                      })))
            ])
          : Center(
              child: Text("No Record Found"),
            ),
    );
  }
}
