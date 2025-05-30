import 'dart:io';

bool cpfIsValid(String cpf) {
  int soma = 0;
  int verificador1;
  int verificador2;

  int k = 10;
  for (int i = 0; i < 9; i++){
    int digito = int.parse(cpf[i]);
    soma += digito * k;
    k--;
  }
  
  if (soma % 11 == 0 || soma % 11 == 1){
    verificador1 = 0;
  } else {
    verificador1 = 11 - (soma % 11);
  }

  soma = 0;
  int d = 10;
  for (int j = 1; j < 10; j++){
    int digito = int.parse(cpf[j]);
    soma += digito * d;
    d--;
  }

  if (soma % 11 == 0 || soma % 11 == 1){
    verificador2 = 0;
  } else {
    verificador2 = 11 - (soma % 11);
  }

  if (int.parse(cpf[9]) == verificador1 && 
      int.parse(cpf[10]) == verificador2){
    return true;
  } else {
    return false;
  }

}

void main(List<String> args) {
  stdout.write('👉 Informe um CPF: ');
  String cpf = stdin.readLineSync()!;

  if (cpfIsValid(cpf)) {
    print("✅ CPF VÁLIDO ✅");
  } else {
    print("❌ CPF INVÁLIDO ❌");
  }

}