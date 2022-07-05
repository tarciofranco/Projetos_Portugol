programa
{
	/*
	 * Calculo do valor final do produto
	 * Regras: 
	 * 1 a 100   { Imposto de 2% }
	 * 101 a 200 { Imposto de 5% }
	 * 201 a 500 { Desconto de 2 % e Imposto de 7% } 
	 * Acima de 500 {Desconto de 4% e Imposto de 10% }
	*/
	funcao inicio()
	{
		//Variaveis
		real vOriginal, vImposto, vDesconto, vFinal, vBaseDesconto

		//Valore padrao das variaveis
		vOriginal = 0
		vImposto 	= 0
		vDesconto = 0
		vFinal 	= 0
		
		//Recebe o valor do produtuo
		escreva("Informe o valor do produto: \n")
		leia(vOriginal)

		//Regras de calculo
		se(vOriginal >=  1 e vOriginal <= 100){
			vImposto 	= (vOriginal * 0.02)
			vFinal 	= (vOriginal + vImposto)
		}
		se(vOriginal >=  101 e vOriginal <= 200){
			vImposto 	= (vOriginal * 0.05)
			vFinal 	= (vOriginal + vImposto)
		}		
		se(vOriginal >=  201 e vOriginal <= 500){
			vDesconto = (vOriginal * 0.02)
			vBaseDesconto = (vOriginal - vDesconto)			
			vImposto 	= (vBaseDesconto  * 0.07)			
			vFinal	= (vBaseDesconto + vImposto)
		}		
		se(vOriginal >=  501){
			vDesconto = (vOriginal * 0.04)
			vBaseDesconto = (vOriginal - vDesconto)			
			vImposto 	= (vBaseDesconto  * 0.10)			
			vFinal	= (vBaseDesconto + vImposto)
		}		
		

		//Impressao do resultado
		escreva("# Resultado do calculo # \n")
		escreva("Valor Original: R$ ", vOriginal, 	"\n")
		escreva("Valor Desconto: R$ ", vDesconto, 	"\n")
		escreva("Valor Imposto: R$ ", vImposto, 	"\n")
		escreva("Valor Final: R$ ", vFinal, 		"\n")
		
		/*
		 * Valor Original 	: R$ 100,00 
		 * Valor Desconto 	: R$ 0,00
		 * Valor de Imposto : R$ 2,00
		 * Valor Final 	: R$ 102,00
		*/
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1307; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */