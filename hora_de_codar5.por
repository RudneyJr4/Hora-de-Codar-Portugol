programa
{
	
  real saldo = 150.00// Float
  inteiro extrato[5] = {"Brinco da muie", "Numero 19 do jogo do bicho", "Comida da 32", "Baralho do truco", "Monitor Gamer 4k"}
  cadeia nome

	funcao inicio() {

    escreva("Qual seu nome? ")
    leia(nome)
		
    escreva("Olá ", nome, " é um prazer ter você por aqui!\n")

    opcao()

	}

  funcao opcao(){
    inteiro operacao 
	
		escreva("Escolha uma opção:\n")
		escreva("1. Ver saldo\n")
    escreva("2. Ver extrato\n")
    escreva("3. Fazer saque\n")
		escreva("4. Fazer depósito\n")
    escreva("5. Fazer transferencia\n")
		escreva("6. Sair\n")
		
    leia(operacao)

		escreva("A opção selecionada foi: " + operacao + "\n")

    escolha (operacao){
      caso 1:
        verSaldo()
      caso 2:
        verExtrato()
      caso 3:
        fazerSaque()
      caso 4:
        fazerDeposito()
      caso 5:
        fazerTransferencia()
      caso 6:
        sair()
      caso contrario:
        erro()
    }
    
  }

	funcao verSaldo(){
    inteiro senha

    escreva("\nInforme a senha: ")
    leia(senha)

    se(senha != 3589){
      escreva("\nSenha invalida!\n")
      opcao()
    }senao{
      escreva("\nSenha correta.\n")
    
      escreva("-------------------------------------------------------------------\n")
        escreva("Seu saldo atual é: ", saldo, "\n")
        escreva("-------------------------------------------------------------------\n")
        opcao()
    }
	}
	
	funcao fazerDeposito() {
    escreva("-------------------------------------------------------------------\n")

		real deposito
		
		escreva("Qual o valor para depósito? ")
		leia(deposito)
		
		se (deposito <= 0){
			escreva("Por favor, informe um número válido.\n")
			fazerDeposito()
		} senao {
			saldo = saldo + deposito
			verSaldo()
		}
    escreva("-------------------------------------------------------------------\n")
	}
	
	funcao fazerSaque(){
    inteiro senha

    escreva("\nInforme a senha: ")
    leia(senha)

    se(senha != 3589){
      escreva("\nSenha invalida!\n")
      opcao()
    }senao{
      escreva("\nSenha correta.\n")
    
      escreva("-------------------------------------------------------------------\n")
      real saque
    
      escreva("Qual o valor para saque? ")
      leia(saque)
    
      se (saque <= 0){
            escreva("Por favor, informe um número válido.\n")
            fazerSaque()
      }
      senao {
        
        se(saque > saldo){
          escreva("Operação não autorizada")
        }senao{
          saldo = saldo - saque
          verSaldo()
        }

      }
      escreva("-------------------------------------------------------------------\n")
    }
	}

	funcao erro() {
    escreva("-------------------------------------------------------------------\n")
		escreva("Opção Inválida\n")
		opcao()
    escreva("-------------------------------------------------------------------\n")
	}

	funcao sair(){
		escreva("\nPrograma encerrado\n")
    escreva( nome,", foi um prazer ter você por aqui!\n")
	}

  funcao verExtrato(){
    inteiro senha

    escreva("\nInforme a senha: ")
    leia(senha)

    se(senha != 3589){
      escreva("\nSenha invalida!\n")
      verExtrato()
    }senao{
      escreva("\nSenha correta.\n")
    
      escreva("-------------------------------------------------------------------\n")
      escreva("Seu extrato é: \n")
      para(inteiro i = 0; i < 5; i++){
        escreva(extrato[i], "\n")
      }
      escreva("-------------------------------------------------------------------\n")
    }
  }

  funcao fazerTransferencia(){
    
    inteiro senha

    escreva("\nInforme a senha: ")
    leia(senha)

    se(senha != 3589){
      escreva("\nSenha invalida!\n")
      fazerTransferencia()
    }senao{

      inteiro numeroConta

      escreva("Informe o numero da conta: ")
      leia(numeroConta)

      real transferencia
    
      escreva("Qual o valor da transferencia? ")
      leia(transferencia)
    
      enquanto(transferencia <= 0){
        escreva("Por favor, informe um número válido.\n")
        escreva("Qual o valor da transferencia? ")
        leia(transferencia)
      }

      enquanto(transferencia > saldo){
        escreva("Operação não autorizada")
        escreva("Qual o valor da transferencia? ")
        leia(transferencia)
      }

      saldo = saldo - transferencia
      verSaldo()
    }

  }

  
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 47; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */