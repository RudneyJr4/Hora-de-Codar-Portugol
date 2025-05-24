programa
{
	
	funcao inicio()
	{

		ex02()
	}

	funcao ex01(){
		// Escreva um programa que crie uma variável chamada "nome_do_carro" e atribua-a um valor "Fusca". Exiba-a ao usuário.
		cadeia nome_do_carro = "Fusca"
	}

	funcao ex02(){
		//Escreva um programa em que o usuário informe o seu nome e exiba a mensagem "Olá, [NomeDoUsuario]".
		cadeia nome

		escreva("Digite seu nome: ")
		leia(nome)

		escreva("Olá, " + nome)
	}

	funcao ex03(){
		//Escreva um programa em que o usuário informe o seu nome e em seguida o programa perguntará a idade do usuário. Agora o programa deve exibir a mensagem "Olá, [NomeDoUsuario], sua idade é [idade]".


		cadeia nome
		inteiro idade

		escreva("Digite seu nome: ")
		leia(nome)

		escreva("Digite sua idade: ")
		leia(idade)

		escreva("Olá," + nome + ", sua idade é " + idade)
	}

	funcao ex04(){

		inteiro opcao

		escreva("ESCOLHA UMA DAS OPÇÕES ABAIXO: ")
			escreva("CALCULAR RETANGULO [1]")
			escreva("CALCULAR QUADRADO [2]")
			escreva("CALCULAR LOSANGO [3]")
			escreva("CALCULAR TRAPÉZIO [4]")
			escreva("CALCULAR PARALELOGRAMA [5]")
			escreva("CALCULAR TRIANGULO [6]")
			escreva("CALCULAR CIRCULO [7]")
			escreva("FECHAR PROGRAMA [0]")

			leia(opcao)
		
		enquanto	(opcao != 0){

			se (opcao == 1){

				//retangulo
				
				real base, altura
				
				escreva("Informe a base do retangulo:")
				leia(base)

				escreva("Informe a altura do retangulo")
				leia(altura)

				escreva("A area desse retangulo é: " + base * altura)
			}
			senao se(opcao == 2){

				//quadrado

				real lado

				escreva("Informe o lado do quadrado: ")
				leia(lado)
				
				escreva("A area do quadrado é: " + lado * lado)
			}
			senao se(opcao == 3){ 

				//losango

				real diagonalMaior, diagonalMenor

				escreva("Informe a diagonal Maior do losango: ")
				leia(diagonalMaior)

				escreva("Informe a diagonal Menor do losango: ")
				leia(diagonalMenor)

				real calculo = (diagonalMaior * diagonalMenor) / 2
				
				escreva("A area do losango: " + calculo)
			}
			senao se(opcao == 4){

				//trapezio
				
				real baseMaior, baseMenor, altura

				escreva("Informe a base Maior do losango: ")
				leia(baseMaior)

				escreva("Informe a base Menor do losango: ")
				leia(baseMenor)

				escreva("Informe a altura do losango: ")
				leia(altura)

				real calculo = ((baseMaior + baseMenor) * altura) / 2
				
				escreva("A area do losango: " + calculo)
				
			}
			senao se(opcao == 5){ 

				//paralelograma

				real base, altura
				
				escreva("Informe a base do paralelograma:")
				leia(base)

				escreva("Informe a altura do paralelograma")
				leia(altura)

				escreva("A area desse paralelograma é: " + base * altura)
				
			}
			senao se(opcao == 6){

				//triangulo
				
				real base, altura

				escreva("Informe a base do triangulo: ")
				leia(base)

				escreva("Informe a altura do triangulo: ")
				leia(altura)

				real calculo = (base * altura) / 2
				
				escreva("A area do triangulo: " + calculo)
			}
			senao se(opcao == 7){ 

				//circulo

				real raio

				escreva("Informe o raio do circulo: ")
				leia(raio)

				real calculo = 3.14 * (raio * raio)
				
				escreva("A area do circulo é: " +  calculo)
			}

			escreva("ESCOLHA UMA DAS OPÇÕES ABAIXO: ")
			escreva("CALCULAR RETANGULO [1]")
			escreva("CALCULAR QUADRADO [2]")
			escreva("CALCULAR LOSANGO [3]")
			escreva("CALCULAR TRAPÉZIO [4]")
			escreva("CALCULAR PARALELOGRAMA [5]")
			escreva("CALCULAR TRIANGULO [6]")
			escreva("CALCULAR CIRCULO [7]")
			escreva("FECHAR PROGRAMA [0]")

			leia(opcao)
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3044; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */