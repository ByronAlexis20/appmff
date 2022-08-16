import 'package:appmff/src/pages/principal_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Login',
              style: TextStyle(fontFamily: 'NerkoOne', fontSize: 50.0),
            ),
            CircleAvatar(
              radius: 100.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('images/logo.png'),
            ),
            SizedBox(
              height: 15.0,
            ),
            _emailTextField(),
            SizedBox(
              height: 15.0,
            ),
            _claveTextField(),
            SizedBox(
              height: 15.0,
            ),
            _buttonLogin(),
          ],
        ),
      ),
    ));
  }

  Widget _emailTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
        child: TextField(
          autofocus: true,
          enableInteractiveSelection: false,
          decoration: InputDecoration(
            hintText: 'alguien@correo.com',
            labelText: 'Ingrese su correo',
            suffixIcon: Icon(Icons.email),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          ),
        ),
      );
    });
  }

  Widget _claveTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
        child: TextField(
          enableInteractiveSelection: false,
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Ingrese su clave',
            labelText: 'Clave',
            suffixIcon: Icon(Icons.lock_outline),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          ),
        ),
      );
    });
  }

  Widget _buttonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
        hoverColor: Colors.lightBlue,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
          child: Text(
            'Iniciar sesión',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 20.0,
            ),
          ),
        ),
        color: Colors.lightBlue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PrincipalPage()));
        },
      );
    });
  }
}
