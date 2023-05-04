

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OpenChatScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocProvider<OpenChatBloc>(
      child: Scaffold(
        body: TextField(

        );
      ),
    );
  }

}