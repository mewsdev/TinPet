import 'login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sobre extends StatefulWidget {
  const Sobre({Key? key}) : super(key: key);

  @override
  State<Sobre> createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 25, left: 75, right: 75),
        color: Colors.yellow.shade200,
        child: ListView(
          children: <Widget>[
            Container(
              width: 50,
              height: 75,
              alignment: Alignment(0.0, 1.15),
              child: Text(
                "Sobre o App",
                style: GoogleFonts.vt323(
                  fontSize: 30,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              alignment: Alignment(0.0, 1.15),
              child: Text(
                "Nosso aplicativo visa ajudar a conectar os amantes de pets de todos os tipos! Temos espaço para ONGs, protetores, voluntários, financiadores e principalmente tutores e futuros tutores. Acreditamos que nossos amigos podem abrir portas para outras amizades e por isso propomos uma nova experiência de interação.",
                style: GoogleFonts.vt323(
                  fontSize: 22,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment(0.0, 1.15),
              child: Text(
                "(PRECISA DE AJUSTES)",
                style: GoogleFonts.vt323(
                  fontSize: 22,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 300,
              width: 100,
              child: Image.asset('lib/img/dev.jpeg'),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(left: 130),
              height: 45,
              decoration: BoxDecoration(
                color: Colors.pink.shade200,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Voltar",
                      style: GoogleFonts.vt323(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
