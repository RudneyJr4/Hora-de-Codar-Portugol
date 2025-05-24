programa {
  funcao inicio() {
    ex11()
  }

  funcao ex01(){
    //Escreva um programa em que o usuário informe dois números. Então escreva em tela o maior deles. 

    inteiro n1, n2

    escreva("Informe o primeiro numero: ")
    leia(n1)

    escreva("Informe o segundo numero: ")
    leia(n2)

    se(n1 >= n2){
      escreva(n1, " maior que ", n2)
    }senao{
      escreva(n2, " maior que ", n1)
    }
  }

  funcao ex02(){
    // Faça um programa que leia um valor informado pelo usuário e diga se o valor informado é positivo, negativo ou zero.

    inteiro n1
    
    escreva("Escreva um numero: ")
    leia(n1)

    se (n1 >= 0){
      escreva("este numero é positivo")
    }senao{
      escreva("este numero é negativo")
    }
  }

  funcao ex03(){
    //Faça um programa para ler 3 valores (considere que não serão informados valores iguais) e escrever o maior deles. 

    inteiro n1, n2, n3

    escreva("Informe o primeiro numero: ")
    leia(n1)

    escreva("Informe o segundo numero: ")
    leia(n2)

    escreva("Informe o terceiro numero: ")
    leia(n3)

    se(n1 > n2 e n1 > n3){
      escreva(n1, " é o maior de todos")
    }senao se (n2 > n1 e n2 > n3){
      escreva(n2, " é o maior de todos")
    }senao{
      escreva(n3, " é o maior de todos")
    }
  }

  funcao ex04(){
    //Faça um programa que leia 3 valores informados pelo usuário 
    //(considere que não serão informados valores iguais) e escrever a soma dos 2 maiores.

    inteiro n1, n2, n3

    escreva("Informe o primeiro numero: ")
    leia(n1)

    escreva("Informe o segundo numero: ")
    leia(n2)

    escreva("Informe o terceiro numero: ")
    leia(n3)

    se(n1 < n2 e n1 < n3){
      
      escreva("Os dois maiores são: ", n2, " e ", n3)
      escreva("\n A soma entre os dois é: ", n2+n3)

    }senao se (n2 < n1 e n2 < n3){
      
      escreva("Os dois maiores são: ", n1, " e ", n3)
      escreva("\n A soma entre os dois é: ", n1+n3)

    }senao se (n3 < n1 e n3 < n2){
      escreva("Os dois maiores são: ", n1, " e ", n2)
      escreva("\n A soma entre os dois é: ", n1+n2)
    }
  }

  funcao ex05(){
    // Faça um programa que leia 6 valores informados pelo usuário, calcule, exiba os 
    //números informados e escreva a média aritmética desses valores lidos.

    inteiro vet[6], soma = 0
    real media = 0

    para(inteiro i = 0; i < 6; i++){
      inteiro n
      
      escreva("Digite o ", i + 1, "° numero: ")
      leia(n)

      soma = soma + n

      vet[i] = n
    }

    media = soma / 6
    escreva("A media é ", media)
    escreva("\nNumeros digitados são ", vet)
  }

  funcao ex06(){
    //Faça um programa que receba quatro valores informados pelo usuário, mas informe somente o primeiro, 
    //o último e o maior de todos eles (considere que todos os números informados serão diferentes)

    inteiro vet[4], maior = 0

    para(inteiro i = 0; i < 4; i++){
      inteiro n
      
      escreva("Digite o ", i + 1, "° numero: ")
      leia(n)

      se(maior < n){
        maior = n
      }

      vet[i] = n
    }

    escreva("O primeiro numero é: ", vet[0], " e o ultimo é: ", vet[3])
    escreva("\nO maior é: ", maior)
  }

  funcao ex07(){
    //Faça um programa que leia 6 números que o usuário vai informar. Todos os números 
    //lidos com valor inferior a 72 devem ser somados. Escreva o valor final da soma efetuada 
    //e também todos valores que o usuário informou.

    inteiro vet[6], soma = 0

    para(inteiro i = 0; i < 6; i++){
      inteiro n
      
      escreva("Digite o ", i + 1, "° numero: ")
      leia(n)

      se(n < 72){
        soma = soma + n
      }

      vet[i] = n
    }

    escreva("O todos os numero digitados é: ", vet)
    escreva("\nA soma é: ", soma)
    
  }

  funcao ex08(){
    //Escreva um programa que calcule a média de quatro números informados pelo usuário, 
    //mas somente se esses números forem maiores que 0 e menores que 10. No final, se a média 
    //for maior que cinco o usuário receberá uma mensagem "Você passou no teste". Em qualquer outra 
    //situação, ele receberá uma mensagem de "tente novamente" 

    inteiro soma = 0, conta = 0
    real media = 0

    para(inteiro i = 0; i < 4; i++){
      inteiro n
      
      escreva("Digite o ", i + 1, "° numero: ")
      leia(n)

      se(n > 0 e n < 10){
        soma = soma + n
        conta = conta + 1
      }
    }

    media = soma / conta

    se(media > 5){
      escreva("Você passou no teste")
    }senao{
      escreva("tente novamente")
    }
  }

  funcao ex09(){
    //Escreva um programa para ler o ano de nascimento de uma pessoa e escrever uma mensagem que 
    //diga se ela poderá ou não votar este ano (não é necessário considerar o mês em que ela nasceu).

    const inteiro ANO = 2025
    inteiro anoNascimento, calc

    escreva("Digite o ano em que você nasceu: ")
    leia(anoNascimento)

    calc = ANO - anoNascimento

    se(calc >= 18){
      escreva("Você podera votar")
    }senao{
      escreva("Você não podera votar")
    }

  }

  funcao ex10(){
    //Tendo como entrada a altura e o gênero designado ao nascer (codificado da seguinte forma: 1: feminino - 2: masculino - ) 
    //de uma pessoa, construa um programa que calcule e imprima seu peso ideal, utilizando as seguintes fórmulas.

    //para homens: (72.7*h)-58 
    //para mulheres (62.1* h)-44.7 
    //Observação: Altura = h (na fórmula acima).

    inteiro genero
    real h

    escreva("Infome seu genero: ")
    leia(genero)

    escreva("Informe sua altura: ")
    leia(h)

    se(genero == 1){
      escreva("Seu peso ideial é: ", (62.1* h)-44.7  )
    } senao se(genero == 2){
      escreva("Seu peso ideial é: ", (72.7*h)-58 )
    }
  }

  funcao ex11(){
    //Uma micro calculadora
    //Escreva um programa para ler 2 valores inteiros informados pelo usuário e uma das 
    //seguintes operações a serem executadas (codificada da seguinte forma: 1. Adição, 2. Subtração, 3. Divisão, 4. Multiplicação).
    //O programa deve calcular e escrever o resultado dessa operação sobre os dois valores lidos. 

    //Observação: Considere que só serão lidos os valores 1, 2, 3 ou 4 para as operações

    inteiro n1, n2, operacao

    escreva("Informe o primeiro numero: ")
    leia(n1)

    escreva("Informe o segundo numero: ")
    leia(n2)

    escreva("Informe o numero da operacao: ")
    leia(operacao)

    se(operacao == 1){
      escreva("O resultado da operacao é: ", n1 + n2)
    }senao se(operacao == 2){
      escreva("O resultado da operacao é: ", n1 - n2)
    }senao se(operacao == 3){
      escreva("O resultado da operacao é: ", n1 / n2)
    }senao se(operacao == 4){
      escreva("O resultado da operacao é: ", n1 * n2)
    }senao{
      escreva("Operacao invalida!")
    }
  }

  
}