import 'package:carrossel/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AdocoesPage extends StatelessWidget {
  const AdocoesPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawer(),
        appBar: AppBar(
          title: const Text('Adoções'),
          backgroundColor: Colors.pinkAccent,
        ),
      );
}
