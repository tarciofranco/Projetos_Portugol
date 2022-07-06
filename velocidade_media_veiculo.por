programa
{
	inclua biblioteca Util --> u	
	funcao inicio()
	{
		real v1, v2, v3, media
		
		escreva("# Projeto 1: Calculo de média sobre o trajeto percorrido # \n")
		escreva("Informe a velocidade da 1º terça parte do trajeto: \n")
		leia(v1)
		escreva("Informe a velocidade da 2º terça parte do trajeto: \n")
		leia(v2)
		escreva("Informe a velocidade da 2º terça parte do trajeto: \n")
		leia(v3)
		limpa()
		escreva("Calculando Velocidade Média ... \n")
		u.aguarde(800)
		
		//Calculando 
		media = (v1 + v2 + v3 ) / 3

		escreva("Velocidade média do trajeto --> ", media , "\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 86; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */