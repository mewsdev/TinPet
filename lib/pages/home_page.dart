import 'dart:js_util';
import 'package:google_fonts/google_fonts.dart';
import 'package:carrossel/pages/adocoes.dart';
import 'package:carrossel/pages/slide_tile.dart';
import 'package:carrossel/pages/userpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // atributos definidos
  final PageController _pageController = PageController(viewportFraction: 0.8);
  //margem e animação leve de ir p lado
  int _currentPage = 0;

  var _listSlide = [
    //lista de slides
    {
      'id': 0,
      'image': 'assets/images/pet.png',
      'image2': 'assets/images/moeda.png'
    },
    {'id': 1, 'image': 'assets/images/find.png', 'image2': 'oi1'},
    {'id': 2, 'image': 'assets/images/dog.png', 'image2': 'oi2'},
  ];

  @override
  void initState() {
    _pageController.addListener(() {
      int next = _pageController.page!.round();
      if (_currentPage != next) {
        setState(() {
          _currentPage = next;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TinPet',
          style: GoogleFonts.vt323(fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo.shade100,
        foregroundColor: Colors.black,
        shape: Border(bottom: BorderSide(color: Colors.yellow.shade500)),
        shadowColor: Colors.amber,
      ),
      backgroundColor: Colors.indigo.shade100,
      drawerScrimColor: Colors.indigo.shade100,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _listSlide.length,
                itemBuilder: (_, currentIndex) {
                  bool activePage = currentIndex == _currentPage;
                  return SlideTile(
                    activePage: activePage,
                    image: _listSlide[currentIndex]['image'] as String,
                    image2: _listSlide[currentIndex]['image2'] as String,
                  );
                },
              ),
            ),
            _buildBullets(),
            /* _buildText()*/
          ],
        ),
      ),
      drawer: const NavigationDrawer(), //menu hamburguer
    );
  }

  Widget _buildBullets() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _listSlide.map((i) {
          return Container(
            margin: EdgeInsets.all(10),
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: _currentPage == i['id']
                  ? Color.fromARGB(255, 255, 255, 255)
                  : Colors.grey,
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return Scaffold();
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        )),
      );
}

Widget buildHeader(BuildContext context) => Material(
    color: Color.fromRGBO(197, 202, 233, 1),
    child: InkWell(
        onTap: (() {
          Navigator.pop(context);

          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const UserPage()));
        }),
        child: Container(
          padding: EdgeInsets.only(
            top: 24 + MediaQuery.of(context).padding.top,
            left: 24,
            bottom: 24,
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 36,
                backgroundImage: AssetImage("assets/images/pets.png"),
                backgroundColor: Color.fromRGBO(197, 202, 233, 1),
              ),
              Text(
                ' Leila Hut',
                style: GoogleFonts.vt323(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
        )));

Widget buildMenuItems(BuildContext context) => Container(
    padding: const EdgeInsets.all(16),
    color: Colors.white,
    child: Wrap(
      runSpacing: 7,
      children: [
        ListTile(
          leading: const Icon(Icons.find_in_page),
          title: const Text('Buscar'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.favorite_border),
          title: const Text('Adoções'),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AdocoesPage()));
          },
        ),
        ListTile(
          leading: const Icon(Icons.people_alt),
          title: const Text('Amizade'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.chat_outlined),
          title: const Text('Mensagens'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.location_on_outlined),
          title: const Text('Localização'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.calendar_month),
          title: const Text('Agendamentos'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.attach_money),
          title: const Text('Doações'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Configurações'),
          onTap: () {},
        ),
        const Divider(
          color: Color.fromRGBO(197, 202, 233, 1),
        ),
        ListTile(
          leading: const Icon(Icons.help_outline),
          title: const Text('Ajuda e suporte'),
          onTap: () {},
        ),
      ],
    ));
