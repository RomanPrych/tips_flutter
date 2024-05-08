import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tips_flutter/second/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          'HomePage',
          style: TextStyle(color: Colors.indigo),
        ),
      ),
      body: Column(
        children:[
          GestureDetector(
          onTap: (){
            GoRouter.of(context).go('/FirstPage');
          },
          child: Container(width: 150, height: 80, color: Colors.indigo, child: Text('ope FirstPage'),),
        ),

          GestureDetector(
            onTap: (){
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => SecondPage(),
              //     //settings: RouteSettings(name: 'secondPage'),
              //   ),
              // );

              GoRouter.of(context).push('/FirstPage');
            },
            child: Container(width: 150, height: 80, color: Colors.red, child: Text('ope FirstPage'),),
          ),

          GestureDetector(
            onTap: (){
              GoRouter.of(context).pushNamed('Second_Page');
            },
            child: Container(width: 150, height: 80, color: Colors.green, child: Text('open SecondPage'),),
          ),

          GestureDetector(
            onTap: () async {
              var rr =  GoRouter.of(context).goNamed('First_Page');

              },
            child: Container(width: 150, height: 80, color: Colors.yellowAccent, child: Text('ope FirstPage'),),
          ),
        ]
      ),
    );
  }
}
