import 'Clt.dart';

void main(List<String> args) {
  Clt c = new Clt("Gustavo", 4500);
  c.beneficios();
  print("Salário líquido do ${c.nome}: ${c.salarioLiquido()}");
}