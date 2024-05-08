import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: BlocProvider(
        create: (BuildContext context) {
          return BlocSecond();
        },
        child: BlocConsumer<BlocSecond, SecondState>(
          builder: (BuildContext context, state) {
            print('builder>>>$state');
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.red,
                title: const Text(
                  'SecondPage',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              body: Column(
                children: [
                  Text(state.toString()),
                  GestureDetector(
                    onTap: () {
                      context.read<BlocSecond>().send2();
                    },
                    child: Container(
                        margin: EdgeInsets.all(30),
                        color: Colors.indigo,
                        child: Text('SEND 2')),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.read<BlocSecond>().send3();
                    },
                    child: Container(
                        margin: EdgeInsets.all(30),
                        color: Colors.red,
                        child: Text('SEND 3')),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.read<BlocSecond>().send4();
                    },
                    child: Container(
                        margin: EdgeInsets.all(30),
                        color: Colors.blue,
                        child: Text('SEND 4')),
                  ),
                ],
              ),
            );
          },
          listener: (BuildContext context, Object? state) {
            print('listener>>>$state');
          },
          buildWhen: (f,s){
           return s is Init3?true:false;
          },
        ),
      ),
    );
  }
}

class BlocSecond extends Cubit<SecondState> {
  BlocSecond() : super(Init());

  send2() {
    emit(Init2());
  }

  send3() {
    emit(Init3());
  }

  send4() {
    emit(Init4());
  }
}

class SecondState extends Equatable {
  @override
  List<Object?> get props => [double.nan];
}

class Init extends SecondState {
  @override
  List<Object?> get props => [double.nan];
}

class Init2 extends SecondState {
  @override
  List<Object?> get props => [double.nan];
}

class Init3 extends SecondState {
  @override
  List<Object?> get props => [double.nan];
}

class Init4 extends SecondState {
  @override
  List<Object?> get props => [double.nan];
}
