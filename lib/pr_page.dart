import 'package:flutter/material.dart';

class PRPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: ListView(
        children: <Widget>[
          PRdetailsList(),
          PRdetailsList(),
          PRdetailsList(),
          PRdetailsList(),
          PRdetailsList(),
        ],
      ),
    );
  }
}

class PRdetailsList extends StatelessWidget {
  const PRdetailsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      child: 
      Card(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // ListTile(
            //   leading: Icon(Icons.book),
            //   title: Text('Doc # 7500006521'),
            //   subtitle: Text('Siemens Pvt'),
            // ),
            // FlatButton(
            //   child: const Text('Approve'),
            //   onPressed: () {
            //     /* ... */
            //   },
            // ),

            Padding(
              padding: const EdgeInsets.only( top: 5,left: 265),
              child: Opacity(
                opacity: 0.9,
                child: Container(
                  color: Colors.grey,
                  child: Text(
                    'Mar 13,2015',

                  ),
                  
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16),
              child: Text('Doc # 7500006521'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 16),
              child: Text('Siemens Pvt'),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 16),
                  child: Text('78.4 PKR'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text('Approved'),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
