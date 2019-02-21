import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  AuthPage();

  @override
  State<StatefulWidget> createState() {
    return _AuthPage();
  }
}

class _AuthPage extends State<AuthPage> {
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
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
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
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: Text('LOGIN'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/products');
                }),
          ],
        ),
      ),
    );
  }
}
