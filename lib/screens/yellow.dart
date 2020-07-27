import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../util/route_names.dart';

class Yellow extends StatelessWidget {
  const Yellow({Key key}) : super(key: key);

  final String yellowRoute = '/yellow';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustAppBar(),
      body: Container(
        color: Colors.yellow,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        padding: EdgeInsets.all(50),
        child: Column(
          children: <Widget>[
            Text(
              'Yellow page',
              style: TextStyle(fontSize: 22),
            ),
            RaisedButton(
              color: Colors.purple,
              hoverColor: Colors.amber,
              child: Text('Next Color', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.PurpleScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
