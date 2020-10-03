import 'package:aula_listas_wpp/app/blocs/app_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class FullScreenDialog extends StatefulWidget {
  @override
  _FullScreenDialogState createState() => _FullScreenDialogState();
}

class _FullScreenDialogState extends State<FullScreenDialog> {
  TextEditingController _valueTextController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    AppBloc _bloc = BlocProvider.of<AppBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Insira o item"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            controller: _valueTextController,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _bloc.insertList(_valueTextController.text);
          Navigator.pop(context);
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
