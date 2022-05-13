programa
{
	
	funcao inicio()
	{
		//Variaveis
		real num1, num2, resultado
		caracter operacao

		resultado = 0
			
		//Pega informacoes do usuario
		escreva("Informe o primeiro numero", "\n")
		leia(num1)
		escreva("Informe o segundo numero", "\n")
		leia(num2)
		escreva("Informe a operacao ",  "\n")
		leia(operacao)

		//calculo
		se(operacao == '+' ){			
			resultado = (num1 + num2)
		}
		senao se(operacao == '-' ){
			resultado = (num1 - num2)
		}		
		senao{
			escreva("operacao nao disponivel", "\n")
		}

		escreva("O resultado da operacao e: ", resultado)


	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 333; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */