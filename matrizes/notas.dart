import 'dart:io';

void main(List<String> args) {
  List<String> alunos = [];
  List<List<double>> notas = [];

  bool exit = false;

  do {
    String menu = '''
  ##### MENU DO SISTEMA #####
  Escolha uma opção:
  [1] Cadastrar Aluno
  [2] Lista Alunos e Médias
  [3] Sair do Programa
  ###########################
  ''';
    print(menu);
    stdout.write('Opção: ');
    String? opcao = stdin.readLineSync();

    switch (opcao) {
      case '1':
        stdout.write('Informe o nome do Aluno:');
        String nome = stdin.readLineSync()!;
        alunos.add(nome);
        // cadastrar notas
        stdout.write('Qual a quantidade de notas? -> ');
        int qtdNotas = int.parse(stdin.readLineSync()!);
        notas.add([]); // criando uma matriz vazia

        // depois de saber a quantidade de notas, percorrer inserindo as notas
        for (int n = 1; n <= qtdNotas; n++) {
          stdout.write('Informe a nota $n: ');
          double nota = double.parse(stdin.readLineSync()!);
          notas[alunos.length - 1].add(nota);
        }

        break;

      case '2':
        if (alunos.isEmpty) {
          print('Sem Alunos Cadastrados');
          break;
        }
        print('##### LISTA DE ALUNOS #####');
        for (int a = 0; a < alunos.length; a++) {
          double media =
              notas[a].reduce((acumulador, nota) => acumulador + nota) /
              notas[a].length;
          print('Aluno(a): ${alunos[a]} | Média: $media \n');
        }

        break;

      case '3':
        print('Obrigado por usar o programa');
        exit = true;
        break;
    }
  } while (!exit);
}
