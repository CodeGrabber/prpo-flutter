import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:prpo_v01/main.dart';

class ReqListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return myApp(context);
  }

  Widget myApp(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'PR'),
                Tab(text: 'PO'),
                Tab(text: 'MR'),
              ],
            ),
            title: Text('Requisition Approval'),
            backgroundColor: Colors.green,
            centerTitle: true,
          ),
          body: TabBarView(
            children: [
              prList(),
              Icon(Icons.book),
              Icon(Icons.book),
            ],
          ),
        ),
      ),
    );
  }

  Widget prList()
  {
    return ListView(
      children: <Widget>[
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.book),
                title: Text('Doc # 7500006521'),
                subtitle: Text('Siemens Pvt'),
              ),
              FlatButton(
                child: const Text('Approve'),
                onPressed: () {
                  /* ... */
                },
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.book),
                title: Text('Doc # 7500006521'),
                subtitle: Text('Siemens Pvt'),
              ),
              FlatButton(
                child: const Text('Approve'),
                onPressed: () {
                  /* ... */
                },
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.book),
                title: Text('Doc # 7500006521'),
                subtitle: Text('Siemens Pvt'),
              ),
              FlatButton(
                child: const Text('Approve'),
                onPressed: () {
                  /* ... */
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

}
