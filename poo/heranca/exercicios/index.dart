import './Carro.dart';
import './Aluno.dart';
import 'Bicicleta.dart';
import 'Gerente.dart';
import 'Programador.dart';

void main(List<String> args) {
  // Exercicio 01:
  Aluno aluno_01 = new Aluno("Gustavo", 26, '0001');
  aluno_01.dadosAluno();

  // Exercicio 02:
  Carro carro_01 = new Carro();
  Bicicleta bike_01 = new Bicicleta();
  carro_01.mover();
  bike_01.mover();

  // Exercicio 03:
  Programador dev_01 = new Programador("Gustavo", 5300);
  Gerente gerente_01 = new Gerente("Diego", 9500);

  print("O bônus pago ao ${dev_01.nome} será de R\$${dev_01.calcularBonus()}");

  print("O bônus pago ao ${gerente_01.nome} será de R\$${gerente_01.calcularBonus()}");
}
