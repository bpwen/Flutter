import 'package:flutter/material.dart';

class card extends StatelessWidget {
    var title = "Hello, world!";
    @override
    Widget build(BuildContext context) {
        return Column(
            children: <Widget>[
                //_Flex(),
                _SizedBox()
            ]
        );
    }
}

class _Flex extends StatelessWidget {
    var title = "Hello, world!";
    @override
    Widget build(BuildContext context) {
        return Flex(
            direction: Axis.horizontal,
            children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Container(
                        padding: const EdgeInsets.all(7),
                        color: Colors.red,
                        child: Text(title),
                    ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                        padding: const EdgeInsets.all(7),
                        color: Colors.green,
                        child: Text(title),
                    ),
                ),
            ],
        );
    }
}


class _SizedBox extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Column(
            children: <Widget>[
                Container(
                    height: 55.0,
                    padding: const EdgeInsets.only(left :10.0, right: 10.0),
                    decoration: BoxDecoration(
                        border: new Border(bottom:BorderSide(width: 1.0,color: Color(0xffe5e5e5))),
                        color: Colors.white,
                    ),
                    child: Flex(
                        direction: Axis.horizontal,
                        children: <Widget>[
                            Expanded(
                                flex: 1,
                                child: Container(
                                    child: tabtitle(),
                                ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Container(
                                    child: more()
                                ),
                            ),
                        ],
                    ),
                ),
                Container(
                    height: 200.0,
                    color: Colors.white,
                ),
            ]
        );
    }
}

class tabtitle extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return Row(
            children: <Widget>[
                Icon(Icons.favorite,color: Colors.red),
                Text("热门", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold ))
            ],
        );
    }
}

class more extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
                Text("更多", style: TextStyle(fontSize: 16.0 )),
                Icon(Icons.keyboard_arrow_right, size: 30.0,)
            ],
        );
    }
}
