import 'package:aula_listas_wpp/app/blocs/app_bloc.dart';
import 'package:aula_listas_wpp/app/widgets/fullscreendialog_widget.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:aula_listas_wpp/app/pages/list_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    AppBloc _bloc = BlocProvider.of<AppBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Listaê"),
        centerTitle: true,
      ),
      body: ListPage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => FullScreenDialog(),
              fullscreenDialog: true,
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
