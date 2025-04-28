/* 
  4. Crie uma classe Produto com um atributo privado _nome.
  O setter deve armazenar o nome com a primeira letra maiúscula.
  O getter retorna o nome formatado.
  dicas: utilize trim() toUpperCase() substring() e toLowerCase()
*/

class Produto2 {
  String _nome = "";

  String get nome => _nome;

  set nome(String novoNome) {
    if (novoNome.isNotEmpty) {
      String primeiraLetra = novoNome[0].toUpperCase();
      String demaisLetras = novoNome.substring(1);
      _nome = primeiraLetra + demaisLetras;
    } else {
      print("O nome não pode ser vazio");
    }
  }
}
