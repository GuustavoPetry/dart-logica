// Alto acoplamento:
class CartaoCredito {
  void pagar(double valor) {
    print("Pagamento com cartão de crédito");
  }
}

class PagamentoAltoAcoplamento {
  final CartaoCredito cartao;
  PagamentoAltoAcoplamento(this.cartao);

  void processar(double valor) {
    cartao.pagar(valor);
  }
}

// Baixo acoplamento:
abstract class MetodoPagamento {
  void pagar(double valor);
}

class Cartao implements MetodoPagamento {
  @override
  void pagar(double valor) {
    print("Pagamento com cartão no valor R\$$valor");
  }
}

class Boleto implements MetodoPagamento {
  @override
  void pagar(double valor) {
    print("Pagamento com boleto no valor R\$$valor");
  }
}

class Pagamento {
  final MetodoPagamento metodo;
  Pagamento(this.metodo);

  void processar(double valor) {
    metodo.pagar(valor);
  }
}

void main(List<String> args) {
  Pagamento pay = new Pagamento(new Boleto());

  pay.processar(100);
}