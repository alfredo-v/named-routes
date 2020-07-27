import 'package:flutter/material.dart';

import '../widgets/appbar.dart';

class Purple extends StatelessWidget {
  const Purple({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustAppBar(),
      body: Container(
        color: Colors.purple,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        padding: EdgeInsets.all(50),
        child: Column(
          children: <Widget>[
            Text(
              'Purple page',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                textBaseline: TextBaseline.ideographic,
              ),
            ),
            RaisedButton(
              color: Colors.yellow,
              hoverColor: Colors.amber,
              child: Text('Back to Yellow',
                  style: TextStyle(color: Colors.purple)),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
