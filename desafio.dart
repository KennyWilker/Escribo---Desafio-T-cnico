import 'dart:io'; // Importa a biblioteca para entrada/saída de dados

// Função que retorna o somatório de números divisíveis por 3 ou 5 menores que o número fornecido
int somatorioDivisiveis(int numero) {
  int soma = 0; // Inicializa a variável soma como 0
  for (int i = 1; i < numero; i++) {
    // Loop de 1 até o número fornecido
    if (i % 3 == 0 || i % 5 == 0) {
      // Verifica se o número é divisível por 3 ou 5
      soma += i; // Se for divisível, adiciona o número à soma
    }
  }
  return soma; // Retorna o somatório calculado
}

void main() {
  stdout.write(
      "Digite um número inteiro positivo: "); // Exibe uma mensagem para o usuário
  String input = stdin.readLineSync()!; // Lê a entrada do usuário
  int numero = int.parse(input); // Converte a entrada para um número inteiro

  int resultado =
      somatorioDivisiveis(numero); // Chama a função para calcular o somatório
  print(
      "O somatório dos números divisíveis por 3 ou 5 menores que $numero é $resultado"); // Exibe o resultado
}
