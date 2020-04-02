import 'package:flutter/material.dart';
import 'package:prpo_v01/main.dart';

class OrderListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.power_settings_new),
            color: Colors.white,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Confirmation'),
                  content: Text('Are you sure you want to logout?'),
                  actions: <Widget>[
                    FlatButton(
                      child: Text('No'),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    FlatButton(
                      child: Text('Yes'),
                      
                      onPressed: () async {
                        //authenticator.clearClient();
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                            (Route<dynamic> route) => false);
                      },
                    ),
                  ],
                ),
              );
            },
          )
        ],
        backgroundColor: Colors.green,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              child: Image(
                image: AssetImage('assets/logo.png'),
              ),
              width: 40.0,
            ),
            SizedBox(
              width: 16.0,
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg_main.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white70,
              BlendMode.colorDodge,
            ),
          ),
        ),
        child: Container(
       child: this._myListView(context),
        ),
       ),

    );
  }

  Widget _myListView(BuildContext context)
  {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
          tiles: [
            ListTile(
              title: Text('Purchase Orders'),
              subtitle: Text('10'),
              trailing: Icon(Icons.library_books),
              contentPadding: EdgeInsets.all(50.0),

            ),
            ListTile(
              title: Text('Purchase Requisitions',),
              subtitle: Text('5'),
              trailing: Icon(Icons.library_books,size: 40.0,color: Colors.white),
              contentPadding: EdgeInsets.all(50.0),
            ),
            ListTile(
              title: Text('Material Requisitions'),
              subtitle: Text('1'),
              trailing: Icon(Icons.library_books),
              contentPadding: EdgeInsets.all(50.0),
            )
          ],
      ).toList(),

    );
  }

}
