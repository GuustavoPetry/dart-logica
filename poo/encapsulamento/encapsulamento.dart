import './ContaBancaria.dart';
import 'Produto.dart';

/**
 Encapsulamento é o conceito de ocultar os detalhes internos de uma classe e 
 controlar o acesso aos seus atributos e métodos. Isso ajuda a manter o controle
 sobre os dados, evitando que sejam modificados diretamente de fora da classe.
 - BENEFÍCIOS:
    - Protege os dados internos da classe;
    - Garante que os dados sejam acessados/modificados de maneira segura e controlada;
    - Facilita a manutenção e evolução do código;
    - No dart usamos _ (underscode) no inicio do nome de variáveis ou métodos
      para torna-los privados ao arquivo onde estão sendo definidos;
   
   */

void main(List<String> args) {
  ContaBancaria conta = ContaBancaria("Gustavo");
  print(conta.getSaldo());

  if (conta.depositar(100)) {
    print("Depósito efetuado com sucesso");
    print("Saldo atual: ${conta.getSaldo()}");
  }

  if (conta.sacar(50)) {
    print("Saque efetuado com sucesso!");
    print("Saldo atual: ${conta.getSaldo()}");
  } else {
    print("Saldo insuficiente");
  }

  /**
    - GETTER & SETTER:
      Em POO getter e setter são métodos utilizados para acessar (get) e modificar
      (set) valores de atributos privados de uma classe.
      No Dart eles são usados como atributos normais, mas por trás você tem uma
      lógica de controle para alterar valores privados.
    - PORQUE USAR?
         Para proteger dados sensíveis de uma classe;
         Para validar valores antes de alterar;
         Para aplicar regras de negócios para acessar ou definir valores;
    */
  Produto p = new Produto("Cerveja", 2.99);
  print("Produto: ${p.nome} | Preço: ${p.preco}");

  p.nome = "Caneta"; // chamando o setter;
  p.preco = 2.5; // chamando o setter;
  // p.nome e p.preco são getters;
  print("Produto: ${p.nome} | Preço: ${p.preco}");
}
