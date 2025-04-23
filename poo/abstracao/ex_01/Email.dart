import 'Notificacao.dart';

class Email implements Notificacao {
  String mensagem = '"E-mail enviado com sucesso!"';
  @override
  void enviar(String mensagem) {
    print(mensagem);
  }
}
