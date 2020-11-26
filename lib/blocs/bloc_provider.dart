
import 'package:local_host_api_test/blocs/bloc.dart';
import 'package:flutter/material.dart';
class BlocProvider<T extends Bloc> extends StatefulWidget {
  final T bloc;
  final Widget child;
  BlocProvider({@required this.bloc, @required this.child});

static T of<T extends Bloc>(BuildContext context) {
final BlocProvider<T> _provider = context.findAncestorWidgetOfExactType<BlocProvider<T>>();
return _provider.bloc;
}
State createState()=>_BlocProviderState();
  }
class _BlocProviderState extends State<BlocProvider>{
  @override
  Widget build(BuildContext context) =>widget.child;
  void dispose(){
    widget.bloc.dispose();
    super.dispose();
  }
  
}