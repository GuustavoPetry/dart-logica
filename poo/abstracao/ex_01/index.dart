import 'Email.dart';
import 'Sms.dart';

void main(List<String> args) {
  Email e = new Email();
  e.enviar(e.mensagem);

  Sms s = new Sms();
  s.enviar(s.mensagem);
}
