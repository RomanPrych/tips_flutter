import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({this.name, super.key});
  final String? name;
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop : true,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(name??'FirstPage', style: TextStyle(color: Colors.black),),
        ),
        body: Center(child:   GestureDetector(
          onTap: (){
            GoRouter.of(context).go('/FirstPage');
          },
          child: Container(width: 150, height: 80, color: Colors.indigo, child: Text('ope FirstPage'),),
        ),),
      ),
    );
  }
}
