import 'package:flutter/material.dart';

//
//  SLIDE TILE É O CARROSSEL NO MENU DO APP
//
class SlideTile extends StatelessWidget {
  final String image;
  final bool activePage;
  final String image2;

  const SlideTile(
      {super.key,
      required this.image,
      required this.activePage,
      required this.image2});

  @override
  Widget build(BuildContext context) {
    final double top = this.activePage ? 150 : 200; //mexer aqui depois
    final double blur = this.activePage ? 10 : 0;
    final double offset = this.activePage ? 10 : 0;

    return AnimatedContainer(
      margin: EdgeInsets.fromLTRB(15, top, 50, 200),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage(this.image), fit: BoxFit.scaleDown),
        // scaleDown foi perfeito pra deixar a imagem com red. bom

        /*boxShadow: [
            //TIRAR BOXSHADOW SE FOR PRECISO
            BoxShadow(
              color: Colors.black87,
              blurRadius: 30,
              offset: Offset(offset, offset),
            )
          ]*/
      ),
      duration: Duration(microseconds: 500), //animação
    );
  }
}
