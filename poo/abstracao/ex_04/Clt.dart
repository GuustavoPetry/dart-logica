import 'Funcionario.dart';

class Clt extends Funcionario {
  Clt(String nome, double salario) : super(nome, salario);

  void beneficios () {
    print('Benefícios do $nome: Plano de Saúde, Vale-alimentação');
  }

  double calcularDesconto () {
    return salario * 0.15;
  }

  double salarioLiquido () {
    return salario - calcularDesconto();
  }
}