import 'package:flutter/material.dart';

import '../widgets/titulo_secao.dart';

class WidgetsConteudo extends StatelessWidget {
  const WidgetsConteudo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Widgets de conteúdo'),),
        // Container -> Bloco onde o conteúdo irá ser inserido
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [const TituloSecao(titulo: "Textos"), // Seção de textos
          const Text('Texto estilizado', style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),),const Text('Texto com estilo padrão', style: TextStyle(
            fontSize: 18,
          ),),
          
          const Divider(),

          // Seção de imagens
          const TituloSecao(titulo: "Imagem"),
          Image.network('https://picsum.photos/id/237/200/300', height: 240),

          const Divider(),

          // Seção de Icones
          const TituloSecao(titulo: "Icone"),
          // Row -> é um widget para alinhar os compoentes dentro dele em uma linha horizontal
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, // justify-content do flutter
            children: [
              Icon(Icons.favorite, color: Colors.red, size: 36),
              Icon(Icons.star, color: Colors.amber, size: 36),
              Icon(Icons.settings, color: Colors.blueGrey, size: 36),
            ],
          ),

          const Divider(),

          // Seção de botão elevado
          const TituloSecao(titulo: "Elevated button"),
          ElevatedButton(onPressed: () {}, child: const Text('Clique em mim'))  

          ]
        ),
      );
  }
}