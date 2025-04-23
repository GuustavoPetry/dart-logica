import 'Funcionario.dart';

class Pj implements Funcionario {
  @override
  void beneficios() {
    print('PJ não oferece benefícios');
  }

  @override
  void descontos() {
    print('PJ não tem descontos');
  }
}
