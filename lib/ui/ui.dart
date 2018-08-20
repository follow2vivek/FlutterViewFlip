import 'package:flutter/material.dart';

class Ui extends StatefulWidget {
  @override
  _UiState createState() => _UiState();
}

class _UiState extends State<Ui> {
  var icons = [Icons.play_arrow, Icons.location_on, Icons.map, Icons.adb,Icons.play_arrow,Icons.play_arrow,Icons.play_arrow,Icons.play_arrow,Icons.play_arrow,Icons.play_arrow];
  ScrollController _scrollController = new ScrollController();

  void _goTo(int index) {
    _scrollController.animateTo((100.0 * 5),
        duration: Duration(milliseconds: 300), curve: Curves.fastOutSlowIn);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: ListView.builder(
        itemBuilder: (context, i) {

          return _rowContainer(icons[0]);
        },
        itemCount: 100,
      ),
    );
  }

  Widget _rowContainer(var icon) {
    return Container(
      height: 150.0,
      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.grey[400], width: 1.0)),
      child: Row(
        children: <Widget>[
          Flexible(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0))),
              child: Icon(
                icon,
                color: Colors.teal,
                size: 40.0,
              ),
            ),
            flex: 1,
          ),
          Flexible(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 10.0),
                    child: Text(
                      "Martin Cook",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.fromLTRB(20.0, 5.0, 10.0, 10.0),
                    child: Text(
                      "Regular Task Pause",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
            flex: 3,
          ),
          Flexible(
            child: Container(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.teal,
                size: 40.0,
              ),
            ),
            flex: 1,
          )
        ],
      ),
    );
  }
}
