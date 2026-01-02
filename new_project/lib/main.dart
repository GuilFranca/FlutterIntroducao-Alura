import 'package:flutter/material.dart';
import 'package:new_project/screens/widgets_layout.dart';
// import 'package:new_project/widgets/titulo_secao.dart';

import 'screens/widgets_conteudos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Scaffold é utilizado para inserir os atributos do tema de forma correta
      home: ListContents(),
    );
  }
}

class ListContents extends StatelessWidget {
  final List<CatalogoItem> secoes = [
    CatalogoItem(
      titulo: 'Widgets de Conteúdo',
      icone: Icons.text_fields,
      descricao: "Exemplos de widgets básicos como Text, image, Icon...",
      destino: const WidgetsConteudo(),
    ),
    CatalogoItem(
      titulo: "Widgets de Layout",
      icone: Icons.view_agenda,
      descricao: "Exemplos / demonstrações de padding, column, flexible",
      destino: const WidgetsLayout(),
    )
  ];
  ListContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Catálogo de Widget'),
        ),
        // Container -> Bloco onde o conteúdo irá ser inserido
        body: Column(
          children: secoes
              .map((item) => ElevatedButton(
                  onPressed: () => Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (_) => item.destino)
                    ),
                  child: Text(item.titulo),
                  ),
                )
              .toList(), // Vamos converter para uma lista, pois o childer do column pede.
        ));
  }
}

class CatalogoItem {
  // Uma variável final só pode receber um valor uma única vez, depois disso não pode mais ser declarada. No caso ela é declarada no constructor abaixo
  final String titulo;
  final IconData icone;
  final String descricao;
  final Widget destino;

  CatalogoItem({
    required this.titulo,
    required this.icone,
    required this.descricao,
    required this.destino,
  });
}
