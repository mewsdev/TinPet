import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';
import 'signupONG.dart';
import '';

class NovaConta extends StatefulWidget {
  const NovaConta({Key? key}) : super(key: key);

  @override
  State<NovaConta> createState() => _NovaContaState();
}

class _NovaContaState extends State<NovaConta> {
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
              padding: EdgeInsets.only(left: 100),
              height: 45,
              decoration: BoxDecoration(
                color: Colors.pink.shade200,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "ONG ou Protetor",
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
                      builder: (context) => NovaContaONG(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Nome",
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
                labelText: "CPF",
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
                "Possui pets?",
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
            Container(
              padding: EdgeInsets.only(left: 110),
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
