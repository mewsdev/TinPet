import 'package:carrossel/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:google_fonts/google_fonts.dart';

bool showPassword = false;

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawer(),
        appBar: AppBar(
          title: Text('Meu perfil', style: GoogleFonts.vt323(fontSize: 30)),
          backgroundColor: Color.fromRGBO(197, 202, 233, 1),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(16, 25, 0, 16),
          child: ListView(
            children: [
              Text('Editar Perfil',
                  style: GoogleFonts.vt323(
                      fontSize: 25, fontWeight: FontWeight.w500)),
              SizedBox(
                height: 150,
                child: Center(
                  child: Stack(children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: new AssetImage("assets/images/pets.png"),
                          )),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: Color.fromRGBO(197, 202, 233, 1),
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        )),
                  ]),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              buildTextField("Nome", "Leila Hunt", false),
              buildTextField("E-mail", "leilahunt@gmail.com", false),
              buildTextField("Senha", "**********", true),
              buildTextField("Quantidade de pets", "3", false),
              buildTextField("Quantidade de doações no app", "15", false),
              buildTextField("Quantidade de Matches", "32", false),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(197, 202, 233, 1),
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () => _showMessageDialog(context),
                    child: Text(
                      "SALVAR",
                      style: GoogleFonts.vt323(
                          fontSize: 16, letterSpacing: 2, color: Colors.black),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
  _showMessageDialog(BuildContext context) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Você tem certeza?"),
          content: Text("Você deseja aplicar estas alterações?"),
          actions: <Widget>[
            TextButton(
              child: Text("Sim"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
  Widget buildTextField(String labelText, String placeholder, bool senha) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: senha ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: senha
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}
