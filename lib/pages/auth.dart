import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  String _usernameValue;
  String _passwordValue;

  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: ListView(children: <Widget>[
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(labelText: 'Username'),
            onChanged: (String value) {
              setState(() {
                _usernameValue = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
            onChanged: (String value) {
              setState(() {
                _passwordValue = value;
              });
            },
          ),
          SwitchListTile(
            value: _acceptTerms,
            onChanged: (bool value) {
              setState(() {
                _acceptTerms = value;
              });
            },
            title: Text('Accept Terms'),
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            color: Theme.of(context).accentColor,
            textColor: Colors.white,
            child: Text('LOGIN'),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/products');
            },
          ),
        ]),
      ),
    );
  }
}
