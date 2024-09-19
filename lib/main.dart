import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Layout());
  }
}

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Primeira linha com o nome completo
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.purple[400],
                height: 150,
                child: const Center(
                  child: Text(
                    'José Eduardo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // Segunda linha com a data (cor verde limão tonalidade 200)
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.green[400],
                height: 150,
                child: Center(
                  child: Text(
                    '19/09/2024',
                    style: TextStyle(
                      color: Colors.lime[200],  // Cor verde limão tonalidade 200
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        // Quatro colunas com ícones (todos na cor branca)
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue[400],
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.star, size: 50, color: Colors.white),  // Ícone branco
                      Icon(Icons.star_border, size: 50, color: Colors.white),  // Ícone branco
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.amber[400],
                  child: const Center(
                    child: Icon(Icons.favorite, size: 50, color: Colors.white),  // Ícone branco
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.pink[400],
                  child: const Center(
                    child: Icon(Icons.home, size: 50, color: Colors.white),  // Ícone branco
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.teal[400],
                  child: const Center(
                    child: Icon(Icons.settings, size: 50, color: Colors.white),  // Ícone branco
                  ),
                ),
              ),
            ],
          ),
        ),
        // Última linha com o nome da turma
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red[400],
                height: 50,
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Text(
                      'Nome da Turma',
                      style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
