import 'Funcionario.dart';

class Programador extends Funcionario {
  Programador(String nome, double salario) : super(nome, salario);
  calcularBonus() {
    double bonus = salario * 0.1;
    return bonus;
  }
}
