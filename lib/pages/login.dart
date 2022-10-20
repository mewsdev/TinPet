import 'dart:html';
import 'package:carrossel/pages/home_page.dart';

import 'sobre.dart';
import 'resetPassword.dart';
import 'signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 75, left: 75, right: 75),
        color: Colors.yellow.shade200,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 75,
              height: 75,
              child: Text(
                "NOME OU LOGO",
                style: GoogleFonts.vt323(
                  fontSize: 50,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              //Image.asset('lib/img/icone_teste.gif'), //imagem para logo
            ),
            SizedBox(
              height: 50,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "email",
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                ),
              ),
              style: GoogleFonts.vt323(fontSize: 20),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "senha",
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                ),
              ),
              style: GoogleFonts.vt323(fontSize: 20),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 25),
              height: 70,
              alignment: Alignment.centerRight,
              child: TextButton(
                child: Text(
                  "Recuperar Senha",
                  textAlign: TextAlign.right,
                  style: GoogleFonts.vt323(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetarSenha(),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 135),
              height: 45,
              decoration: BoxDecoration(
                color: Colors.blue.shade200,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Entrar",
                      style: GoogleFonts.vt323(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "ou",
              style: GoogleFonts.vt323(
                fontSize: 25,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 45,
              padding: EdgeInsets.only(left: 30, right: 75),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: SizedBox(
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        height: 28,
                        width: 28,
                        child: Image.asset('lib/img/google-icon.png'),
                      ),
                      Text(
                        "Login com Google",
                        style: GoogleFonts.vt323(
                          color: Colors.grey,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 25,
              child: TextButton(
                child: Text(
                  "Criar Conta",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.vt323(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NovaConta(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 30,
              child: TextButton(
                child: Text(
                  "Sobre o App",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.vt323(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Sobre(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
