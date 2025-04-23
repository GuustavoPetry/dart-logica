import 'Funcionario.dart';

class Clt implements Funcionario {
  @override
  void beneficios() {
    print('Benefício CLT: Plano Saúde');
  }

  @override
  void descontos() {
    print('Descontos CLT: INSS');
  }
}
