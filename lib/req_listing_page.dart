import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prpo_v01/pr_page.dart';
//import 'package:prpo_v01/main.dart';

class ReqListingPage extends StatefulWidget {
  ReqListingPage({@required this.index});

  int index;
  @override
  _ReqListingPageState createState() => _ReqListingPageState(index: index);
}

class _ReqListingPageState extends State<ReqListingPage>

    with SingleTickerProviderStateMixin {
      _ReqListingPageState({@required this.index});
  TabController _tabController;
 int index;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 3, initialIndex: index);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return myApp(context);
  }

  Widget myApp(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: _tabController,
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
             controller: _tabController,
          children: [
            Icon(Icons.book),
            PRPage(),
            Icon(Icons.book),
          ],
        ),
      ),
    );
  }
}
