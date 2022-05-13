programa
{
	/*
	 * Programa simulação de um sistema bancario
	 * Funcoes de execução = PIX, Transf. Bancaria, Pagamento de Boleto Bancario
	 * 
	*/
	
	funcao inicio()
	{
		//Variaveis
		real ValorMov, SaldoBancario, LimitePIX
		cadeia ChavePOrigem, ChavePDest, TipoChave
		cadeia DataAgendamento, DataEfetivacao

		//Geracao da Chave PIX Origem
		ChavePOrigem = "98764669";

		//Valor inicial do saldo bancario
		SaldoBancario = 1000;

		//Limite PIX
		LimitePIX = 10000;

		//Etapa 01 - Receber valores do usuario
		escreva("Informe o Tipo de Chave PIX do Destinatario: ", "\n");
		escreva("1 = CPF, 2 = Telefone, 3 = Chave Aleatoria", "\n");
		leia(TipoChave);		
		//Validar tipo de chave
		se(TipoChave == "1" ou TipoChave == "2"  ou TipoChave == "3"){
			//
			escreva("Informe o destinatario PIX: ", "\n");
			leia(ChavePDest);
	
			escreva("Valor da Movimentação: ", "\n");
			leia(ValorMov);
						
		}senao{
			escreva("Tipo de Chave Invalida", "\n");
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 707; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */