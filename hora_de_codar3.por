programa {
  funcao inicio() {
    ex11()
  }

  funcao ex01(){
    //1 - Crie uma bomba relógio (usando somente código - para deixar claro!) cuja contagem regressiva vá de 30 a 0. No final da repetição escreva "EXPLOSÃO". 

    para(inteiro c = 30; c >= 0; c--){
      escreva("\n",c)
    }

    escreva("\nEXPLOSÃO")
  }

  funcao ex02(){
    //Escreva um algoritmo para ler 2 valores informados pelo usuário e enquanto o segundo valor informado for 
    //igual ou menor que ZERO, deve ser lido um novo valor, mas para a mesma variável. Ou seja, para o segundo 
    //valor não pode ser aceito o valor zero nem um valor negativo. 

    //O seu programa deve imprimir o resultado da divisão do primeiro valor lido pelo segundo valor e exibir o resultado ao usuário. 

    inteiro n1, n2

    escreva("Informe o primeiro valor: ")
    leia(n1)

    escreva("Informe o segundo valor: ")
    leia(n2)

    enquanto(n2 <= 0){
      escreva("O valor informado não pode ser zero ou menor que zero!")
      escreva("\nInforme o segundo valor: ")
      leia(n2)
    }

    escreva("\nA divisão entre o primeiro numero e segundo é: ", n1/n2)

  }

  funcao ex03(){
    //Escreva um algoritmo para imprimir os números de 1 (inclusive) a 10 (inclusive) em ordem decrescente.
    //Exemplo: 10, 9, 8, 7, 6, 5, 4, 3, 2, 1

    para(inteiro c = 10; c >= 1; c--){
      escreva("\n", c)
    }
  }

  funcao ex04(){
     //Faça um algoritmo que calcule e escreva a média aritmética dos números inteiros entre 15 (inclusive) e 100 (inclusive).

     inteiro calc = 0, quantidade = 0

     para(inteiro c = 15; c <= 100; c++){
      calc = calc + c
      quantidade++
     }

     escreva("A media aritmetica é: ", calc/quantidade)
  }

  funcao ex05(){
    //Faça um algoritmo que calcule e escreva a média aritmética dos dois números inteiros informados pelo usuário 
    //e todos os números inteiros entre eles. Considere que o primeiro sempre será menor que o segundo. 

    inteiro n1, n2

    escreva("Informe o primeiro numero: ")
    leia(n1)

    escreva("informe o segundo numero: ")
    leia(n2)


    inteiro calc = 0, quantidade = 0

     para(inteiro c = n1; c <= n2; c++){
      calc = calc + c
      quantidade++
     }

     escreva("A media aritmetica é: ", calc/quantidade)

  }

  funcao ex06(){
    //Escreva um programa para ler 2 notas de um aluno, calcular e imprimir a média final. Considere 
    //que a nota de aprovação é 9,5. Logo após escrever a mensagem "Calcular a média de outro aluno Sim/Não?" e solicitar um 
    //resposta. Se a resposta for "S", o programa deve ser executado novamente, caso contrário deve ser encerrado exibindo a quantidade de alunos aprovados.

    real nota1, nota2

    escreva("Informe a primeira nota: ")
    leia(nota1)

    escreva("Informe a segunda nota: ")
    leia(nota2)

    real calcMedia = (nota1 + nota2) / 2

    escreva("Media final: ", calcMedia)

    inteiro contador = 0
    se(calcMedia >= 9.5){
      escreva("\nAluno foi aprovado!")
      contador++
    }senao{
      escreva("\nAluno não foi aprovado!")
    }

    caracter opcao

    escreva("\nCalcular a média de outro aluno Sim/Não?")
    leia(opcao)

    
    enquanto(opcao == "S" ou opcao == "s"){

      escreva("Informe a primeira nota: ")
      leia(nota1)

      escreva("Informe a segunda nota: ")
      leia(nota2)

      calcMedia = (nota1 + nota2) / 2

      escreva("Media final: ", calcMedia)

      se(calcMedia >= 9.5){
        escreva("\nAluno foi aprovado!")
        contador++
      }senao{
        escreva("\nAluno não foi aprovado!")
      }

      escreva("\nCalcular a média de outro aluno Sim/Não?")
      leia(opcao)
    }

    escreva("Fim do programa! Quantidade alunos aprovado foi: ", contador)
  }

  funcao ex07(){
    //Escreva um algoritmo para ler as notas de avaliações de um aluno, calcule e imprima a média (simples) 
    //desse aluno. Só devem ser aceitos valores válidos durante a leitura (0 a 10) para cada nota. São 6 notas ao total.
    //Caso o valor informado para qualquer uma das notas esteja fora do limite estabelecido, deve ser solicitado um novo valor ao usuário. 

    real somaTotalNota = 0

    para(inteiro i = 0; i < 6; i++){
      real nota

      escreva("Informe a ", i+1, "° nota do aluno: ")
      leia(nota)

      enquanto(nota < 0 ou nota > 10){
        escreva("Valor da nota invalido! Valor deve estar entre 0 e 10.")
        escreva("\nInforme a ", i+1, "° nota do aluno: ")
        leia(nota)
      }

      somaTotalNota += nota

    }

    escreva("A media final do aluno foi: ", somaTotalNota / 6)
  }

  funcao ex08(){
    //Ler um valor N e imprimir todos os valores inteiros entre 1 (inclusive) e N (inclusive). Considere que o N será sempre maior que ZERO.
    //N  é um valor informado pelo usuário

    inteiro n

    escreva("Informe um valor: ")
    leia(n)

    para(inteiro i = 1; i <= n; i++){
      escreva(i,"\n")
    }
  }

  funcao ex09(){
    //Escreva um algoritmo para imprimir os 10 primeiros números inteiros maiores que 100.

    para(inteiro i = 100; i <= 110; i++){
      escreva(i+1,"\n")
    }
  }

  funcao ex10(){
    //Escreva um programa em que o usuário informe 10 valores e escreva quantos desses valores lidos estão entre 
    //os números 24 e 42 (incluindo os valores 24 e 42) e quantos deles estão fora deste intervalo.

    inteiro contadorEntre = 0, contadorFora = 0
    para(inteiro i = 0; i < 10; i++){
      inteiro n1

      escreva("Informe um valor: ")
      leia(n1)

      se(n1 >= 24 e n1 <= 42){
        contadorEntre++
      }senao{
        contadorFora++
      }
    }

    escreva("Total de valores entre: ", contadorEntre)
    escreva("\nTotal de valores fora: ", contadorFora)
  }

  funcao ex11(){
    //Escreva um programa para imprimir todas as tabuadas de 1 a N. N será informado pelo usuário. 

    inteiro n1

    escreva("Informe um valor para a tabuada: ")
    leia(n1)

    para(inteiro i = 1; i <= 10; i++){
      escreva(n1, " x ", i, " = ", n1 * i, "\n")
    }
  }
}