import 'Funcionario.dart';

class Gerente extends Funcionario {
  Gerente(String nome, double salario) : super(nome, salario);
  calcularBonus() {
    double bonus = salario * 0.2;
    return bonus;
  }
}
