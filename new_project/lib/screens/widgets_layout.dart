import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:new_project/widgets/titulo_secao.dart';

class WidgetsLayout extends StatelessWidget {
  const WidgetsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets de Layout'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const TituloSecao(titulo: "Padding"),
          Container(
            color: Colors.amberAccent,
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text('Texto com padding interno de 20px'),
            ),
          ),
          const Divider(),
          const TituloSecao(titulo: "Align"),
          Container(
            height: 80,
            color: Colors.amberAccent,
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text('Alinhamento de texto'),
            ),
          ),
          const Divider(),
          const TituloSecao(titulo: "Center"),
          Container(
            height: 80,
            color: Colors.amberAccent,
            child: const Center(
              child: Text('Alinhamento de texto no centro'),
            ),
          ),
          const Divider(),
          const TituloSecao(titulo: "SizedBox"),
          const Column(
            children: [
              Text("Texto acima"),
              SizedBox(height: 20),
              Text("Texto abaixo"),
              SizedBox()
            ],
          ),
          const Divider(),
          const TituloSecao(titulo: "Expanded e Flexible (em Column)"),
          Container(
            height: 200,
            color: Colors.green,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: const Center(
                      child: Text("Expanded"),
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.green,
                    child: const Center(child: Text('Flexible (flex: 2)')),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          const TituloSecao(titulo: "Expanded e Flexible (Row)"),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  color: Colors.red,
                  child: const Center(
                    child: Text("Expanded"),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  height: 50,
                  color: Colors.green,
                  child: const Center(child: Text("Flexoble (flex: 1)")),
                ),
              )
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
