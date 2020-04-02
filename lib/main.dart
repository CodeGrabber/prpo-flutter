import 'package:flutter/material.dart';
//import 'order_listing_page.dart';
import 'package:prpo_v01/req_listing_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PRPO Approval',
      theme: ThemeData(
        primaryColor: Colors.orange,
        accentColor: Colors.green,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
    @override
  _MyHomePageState createState() => _MyHomePageState();
 //   _MyHomePageState createState() => ReqListingPage();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _isLoading = false;

  String userId = '';

  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Center(
          child: _isLoading
              ? CircularProgressIndicator()
              : Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  title: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'SAP user ID',
                        hintText: 'Enter your SAP user ID',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                    validator: (value) {
                      if (value.isEmpty) return 'User ID cannot be empty';
                      userId = value;
                      return null;
                    },
                  ),
                ),
                ListTile(
                  title: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value.isEmpty)
                        return 'Password cannot be empty';
                      password = value;
                      return null;
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (!_formKey.currentState.validate()) return;
          try {
            setState(() {
              _isLoading = true;
            });
           /* LoginApi api = LoginApi(userId, password);
            await api.authenticate();
            userCache.setUserId(userId);*/
            Navigator.of(context).pushAndRemoveUntil(
               // MaterialPageRoute(builder: (context) => OrderListingPage()),
                MaterialPageRoute(builder: (context) => ReqListingPage()),

                    (Route<dynamic> route) => false);
          } catch (ex) {
            print(ex);
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Error'),
                content: Text(ex.message),
                actions: <Widget>[
                  FlatButton(
                    child: Text('Dismiss'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              ),
            );
          } finally {
            setState(() {
              _isLoading = false;
            });
          }
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
