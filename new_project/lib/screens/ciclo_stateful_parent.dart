import 'package:flutter/material.dart';
import 'package:new_project/screens/ciclo_stateful.dart';

class CicloStatefulParent extends StatefulWidget {
  const CicloStatefulParent({super.key});

  @override
  State<CicloStatefulParent> createState() => _CicloStatefulParentState();
}

class _CicloStatefulParentState extends State<CicloStatefulParent> {

  Color corAtual = Colors.blue;

  void trocarCor() {
    setState(() {
      corAtual = corAtual == Colors.blue ? Colors.purple : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ciclo de vida - StatefulWidget (Parent)'),),
      body: Column( // Não pode ser const para receber funções
        children: [
          const Text('Simulando os diferentes estagios de vida de um Stateful Widget.',
          textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20,),
          CicloStateful(cor: corAtual,),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: trocarCor, child: const Text("Trocar cor")),
        ],
      ),
    );
  }
}