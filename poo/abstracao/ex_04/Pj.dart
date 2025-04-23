import 'Funcionario.dart';

class Pj extends Funcionario {
  Pj(String nome, double salario) : super(nome, salario);

  double salarioLiquido() {
    return salario;
  }
}