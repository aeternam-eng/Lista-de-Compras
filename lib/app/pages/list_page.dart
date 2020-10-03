import 'package:aula_listas_wpp/app/blocs/app_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:aula_listas_wpp/app/widgets/list_item_widget.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    AppBloc _bloc = BlocProvider.of<AppBloc>(context);
    return Container(
      child: StreamBuilder<List>(
          stream: _bloc.outCurrentList,
          builder: (context, snapshot) {
            return ListView.builder(
              itemCount: _bloc.listSize(),
              itemBuilder: (context, index) {
                if (snapshot.hasData) {
                  return ListItem(
                    index,
                    snapshot.data[index],
                    _bloc.removeList,
                  );
                }
              },
            );
          }),
    );
  }
}
