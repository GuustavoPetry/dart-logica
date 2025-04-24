import 'Notificacao.dart';

class Sms implements Notificacao {
  String mensagem = "SMS enviado com sucesso!";
  
  @override
  void enviar(String mensagem) {
    print(mensagem);
  }
}
