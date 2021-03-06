import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _emailValue;
  String _passwordValue;
  bool _acceptTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(labelText: 'Email'),
            onChanged: (String value) {
              setState(() {
                _emailValue = value;
              });
            },
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'Password'),
            onChanged: (String value) {
              setState(() {
                _passwordValue = value;
              });
            },
          ),
          SwitchListTile(
            title: Text('Accept Terms'),
            value: _acceptTerms,
            onChanged: (bool value) {
              setState(() {
                _acceptTerms = value;
              });
            },
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
            onPressed: () {
              print(_emailValue);
              print(_passwordValue);
              Navigator.pushReplacementNamed(context, '/products');
            },
            child: Text('Login'),
          ),
        ]),
      ),
    );
  }
}
