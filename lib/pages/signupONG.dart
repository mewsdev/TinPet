import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

class NovaContaONG extends StatefulWidget {
  const NovaContaONG({Key? key}) : super(key: key);

  @override
  State<NovaContaONG> createState() => _NovaContaONGState();
}

class _NovaContaONGState extends State<NovaContaONG> {
  bool _selected = false;

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
                "ONGs e Protetores",
                style: GoogleFonts.vt323(
                  fontSize: 30,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Nome/Razão Social",
                labelStyle: GoogleFonts.vt323(
                  color: Colors.grey,
                  fontSize: 25,
                ),
              ),
              style: GoogleFonts.vt323(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "email",
                labelStyle: GoogleFonts.vt323(
                  color: Colors.grey,
                  fontSize: 25,
                ),
              ),
              style: GoogleFonts.vt323(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: GoogleFonts.vt323(
                  color: Colors.grey,
                  fontSize: 25,
                ),
              ),
              style: GoogleFonts.vt323(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Confirmar Senha",
                labelStyle: GoogleFonts.vt323(
                  color: Colors.grey,
                  fontSize: 25,
                ),
              ),
              style: GoogleFonts.vt323(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "CPF/CNPJ",
                labelStyle: GoogleFonts.vt323(
                  color: Colors.grey,
                  fontSize: 25,
                ),
              ),
              style: GoogleFonts.vt323(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "CEP",
                labelStyle: GoogleFonts.vt323(
                  color: Colors.grey,
                  fontSize: 25,
                ),
              ),
              style: GoogleFonts.vt323(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 30,
              child: Text(
                "Pets Disponíveis",
                textAlign: TextAlign.center,
                style: GoogleFonts.vt323(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ),
            SwitchListTile(
              title: const Text('Cachorro'),
              value: _selected,
              onChanged: (bool value) {
                setState(() {
                  _selected = value;
                });
              },
              secondary: const Icon(Icons.pets),
            ),
            SwitchListTile(
              title: const Text('Gato'),
              value: _selected,
              onChanged: (bool value) {
                setState(() {
                  _selected = value;
                });
              },
              secondary: const Icon(Icons.pets),
            ),
            SizedBox(
              height: 50,
            ),
            CheckboxListTile(
              title: const Text('Li e Concordo com os Termos e Condições'),
              onChanged: (bool? value) {
                setState(() {});
              },
              secondary: const Icon(Icons.policy),
              value: _selected,
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(left: 72),
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
                      "Criar Conta",
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
                      builder: (context) => Login(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              height: 40,
              alignment: Alignment.center,
              child: TextButton(
                child: Text(
                  "Cancelar",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.vt323(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                onPressed: () => Navigator.pop(context, false),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 15),
              height: 40,
              alignment: Alignment.center,
              child: TextButton(
                child: Text(
                  "Ajuda",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.vt323(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                onPressed: () => Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
