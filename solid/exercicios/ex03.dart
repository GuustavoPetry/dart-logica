/* 
  LSP - Refatore para que Quadrado não quebre o comportamento esperado do Retangulo. Ou, se necessário, crie uma hierarquia adequada.
 */
class Retangulo {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  double area() => largura * altura;
}

class Quadrado extends Retangulo {
  Quadrado(double tamanho) : super(tamanho, tamanho);
}

// Solução respeitando o principío LSP:
abstract class CalcularArea {
  double area();
}

class Retanguloo implements CalcularArea {
  double largura;
  double altura;
  Retanguloo(this.largura, this.altura);

  @override
  double area() {
    return largura * altura;
  }
}

class Quadradoo implements CalcularArea {
  double lado;
  Quadradoo(this.lado);

  @override
  double area() {
    return lado * lado;
  }
}

void main(List<String> args) {
  Quadradoo quadrado = new Quadradoo(10);
  Retangulo retangulo = new Retangulo(10, 5);

  print(quadrado.area());
  print(retangulo.area());
}