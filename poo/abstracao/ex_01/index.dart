import 'Email.dart';
import 'Sms.dart';

void main(List<String> args) {
  Email e = new Email();
  e.enviar("E-mail enviado com sucesso!");

  Sms s = new Sms();
  s.enviar("SMS enviado com sucesso!");
}
