programa
{
	
	funcao inicio()
	{
		//Variaveis
		caracter r1, r2, r3, r4, r5
		inteiro contador, pontuacao
		
		//inicia variavel contador
		contador = 0

		
		//Perguntas
		escreva("#___________________ QUIZ ___________________#", 	"\n")
		escreva("Responda F para FALSO ou V para VERDADEIRO", 		"\n")
		escreva("---------------------------------------------", 	"\n")
		escreva("1) 1+1 é igual a 2 ? ", "\n")
		leia(r1)
		escreva("A capital do Brasil é São Paulo?", "\n")
		leia(r2)
		escreva("Windows é um Hardware? ", "\n")
		leia(r3)
		escreva("Mouse é um software? ", "\n")
		leia(r4)
		escreva("A terra é plana? ", "\n")
		leia(r5)
		
		//Verifica respostas
		se( r1 == 'V'){
			contador = contador +1
		}
		se (r2 == 'F'){
			contador = contador +1
		}
		se (r3 == 'F'){
			contador = contador +1
		}		
		se (r4 == 'F'){
			contador = contador +1
		}		
		se (r5 == 'F'){
			contador = contador +1
		}

		//Resultado da pontuacao
		pontuacao = contador * 2

		escreva("Pontuacao-> ", pontuacao, " Acertos->", contador)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 973; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */