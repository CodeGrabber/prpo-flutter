import 'package:flutter/material.dart';
import 'package:prpo_v01/main.dart';
import 'package:prpo_v01/req_listing_page.dart';

class OrderListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: true,
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
        backgroundColor: Colors.white,
        body: 
         Container(
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
        child : Column(
          children: <Widget>[
        
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Opacity(opacity: 0.6,
                                          child: Container(
                          height: 30,
                          color: Colors.grey,
                          child: Text('Welcome User',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white))),
                    ),
                  ),
                )
              ],
            ),

            Padding(
                   padding: const EdgeInsets.only(top: 8.0, left: 100, right: 20),
                child:
                    InkWell(
              child: 
                    Opacity(opacity: 0.6, child: CustomWidget(numberValues: '24', textValue: 'Approve Purchae Requisitions')),
                    onTap: (){

                 Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ReqListingPage(index: 0,)),
                 //   (Route<dynamic> route) => false
                    
                    );
              },
              ),
              
            ),
             Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 100, right: 20),
              child:
                  InkWell(child: Opacity(opacity: 0.6, child: CustomWidget(numberValues: '41', textValue: 'Approve Purchase Orders')),onTap: (){

                 Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ReqListingPage(index: 1,)),
                  //  (Route<dynamic> route) => false
                    
                    );
              },),
            ), Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 100, right: 20),
              child:
                  InkWell(child: Opacity(opacity: 0.6, child: CustomWidget(numberValues: '15', textValue: 'Approve Materials Requisitions')),onTap: (){

                 Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ReqListingPage(index: 2,)),
                 
                    
                    );
              },),
            )
          ],
        ),
         )

        //       Padding(
        //         padding: const EdgeInsets.only(top:35.0,right: 10,left: 100),

        //         child:
        //         ListView(

        //           children: <Widget>[
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: CustomWidget(
        //                   textValue: 'Approve Purchase Requisitions',
        //                   numberValues: '24',
        //                 ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: CustomWidget(
        //                   textValue: 'Approve Purchase Requisitions',
        //                   numberValues: '24',
        //                 ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: CustomWidget(
        //                   textValue: 'Approve Purchase Requisitions',
        //                   numberValues: '24',
        //                 ),
        // ),
        //           ],
        //         )

        //       )

        // Container(
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage("assets/bg_main.jpg"),
        //       fit: BoxFit.cover,
        //       colorFilter: ColorFilter.mode(
        //         Colors.white70,
        //         BlendMode.colorDodge,
        //       ),
        //     ),
        //   ),
        //   child: Container(
        //  child: this._myListView(context),
        //   ),
        //  ),

        );
  }

  Widget _myListView(BuildContext context) {
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
            title: Text(
              'Purchase Requisitions',
            ),
            subtitle: Text('5'),
            trailing:
                Icon(Icons.library_books, size: 40.0, color: Colors.white),
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

class CustomWidget extends StatelessWidget {
  CustomWidget({
    @required this.numberValues,
    @required this.textValue,
    Key key,
  }) : super(key: key);

  final String numberValues;
  final String textValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 250,
      color: Colors.grey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 190),
            child: Icon(Icons.library_books),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 150),
            child: Text(
              numberValues,
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20),
            child: Text(
              textValue,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
