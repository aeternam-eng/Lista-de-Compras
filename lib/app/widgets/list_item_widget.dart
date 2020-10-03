import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final int _index;
  final String _name;
  final void Function(int) _onPressed;

  ListItem(this._index, this._name, this._onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(_name),
          FlatButton(
            child: Icon(Icons.delete),
            onPressed: () {
              this._onPressed(this._index);
            },
          ),
        ],
      ),
    );
  }
}
