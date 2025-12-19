import 'package:flutter/material.dart';
import 'package:new_project/widgets/titulo_secao.dart';

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
      home: Scaffold(
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
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
