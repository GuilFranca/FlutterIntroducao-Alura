import 'package:flutter/material.dart';
import 'package:new_project/screens/ciclo_stateful.dart';
import 'package:new_project/screens/ciclo_stateful_parent.dart';
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
    ),
    CatalogoItem(
      titulo: 'Ciclo de vida - Stateful', 
      icone: Icons.sync, 
      descricao: 'Entendendo o ciclo de vida de um StatefulWiget', 
      destino: const CicloStatefulParent(),
    ),
  ];
  ListContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Catálogo de Widget'),
        ),
        // GridView -> Bloco onde o conteúdo irá ser inserido
        body: GridView.count( // Cria uma visualização de janelas com um número definido
          crossAxisCount: 2, // número de colunas
          padding: const EdgeInsets.all(16),
          crossAxisSpacing: 16, // Espaçamento entre as janelas
          childAspectRatio: 0.85, // 1 - Quadrado / < 1 - Vertical / > 1 - Horizontal
          children: secoes
              .map(
                (item) => GestureDetector( // Widget reponsavel por deixar os cards clicaveis
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => item.destino)),
                child:
                  Card(
                    elevation: 4, // Eleva o Widget em questão deixando uma sombra
                    child: Padding(padding: 
                      const EdgeInsets.all(12),
                        child: Column(
                          children: [
                            Icon(
                              item.icone, size: 48, color: Colors.blue,
                            ),
                            Text(
                              item.titulo, 
                              textAlign: TextAlign.center, 
                              style: const TextStyle(
                                fontWeight: FontWeight.bold, 
                                fontSize: 16
                              ),
                              maxLines: 2, // Máximo de linhas
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              item.descricao, 
                              textAlign: TextAlign.center, 
                              style: const TextStyle(
                                fontSize: 12, 
                                color: Colors.grey
                              ),
                              maxLines: 3, // máximo de linhas
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        )
                    ),
                  )
                )
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
