import 'package:case2_5/theme_sheme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class ListStatefulWidget extends StatefulWidget {
  const ListStatefulWidget({Key? key}) : super(key: key);

  @override
  State<ListStatefulWidget> createState() => _ListStatefulWidgetState();
}

class _ListStatefulWidgetState extends State<ListStatefulWidget> {
  int _selectIndex = 0;

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext, int index){
      return ListTile(
      title: Text ( "Строка $index"),
      selected:  index == _selectIndex,
      onTap: (){
        setState(() {
          _selectIndex = index;
        });
      },
      );
    },
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeShemes(),
      home: Scaffold(
        appBar: AppBar( title: Text("AppS"),
        ),
        body: const ListStatefulWidget(),
      ),
    );
  }
}
