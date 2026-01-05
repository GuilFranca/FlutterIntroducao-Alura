import 'package:flutter/material.dart';

class CicloStateful extends StatefulWidget {
  const CicloStateful({super.key});

  @override
  // Cria um estato especifico pro widget
  State<CicloStateful> createState() => _CicloStatefulState(); 
}

class _CicloStatefulState extends State<CicloStateful> {

  @override // Todo statefulWiget terá todos os ciclos de vida
  void initState() {
    // Sempre precisamos chamar o metodo initState da class de onde ele estende, pois preciamos que os metodos padrões tabém precisam ser chamados
    super.initState();
    print('initState: Widget foi inserido na árvore');
  }

  @override
  void didChangeDependecies() {
    super.didChangeDependencies();
    print('didChangeDependencies: Widget recebeu dependências / mudanças no context da árvore');
  }

  @override
  // Recebe a variante anteriro da árvore que tinhamos antes das atualizações das nossas props
  void didUpdateWidget(CicloStateful oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget: Propriedades mudadas');
  }

  @override
  void dispose() {
    super.dispose();
    print('dipose: Widget removido da árvore');
  }

  @override
  Widget build(BuildContext context) {
    print('build: Widget contruído / reconstruído caso seja chamado um setState');
    return const Placeholder();
  }
}