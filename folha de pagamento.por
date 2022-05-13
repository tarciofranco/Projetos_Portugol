programa
{	
	/*
	 * Programa para simular uma folha de pagamento de funcionario
	 * 
	*/
	funcao inicio()

	{
		cadeia nome
		real SalarioMensal, SalarioBruto, Bonificacao, INSS, IRPF, Convenio, SalarioLiquido

		//inicia valores padrao para as variaveis
		SalarioBruto 	= 0;
		SalarioLiquido = 0;
		SalarioMensal 	= 0;
		INSS = 0;
		IRPF = 0;
		Convenio = 0;
		

		//Pegando informacoes 
		escreva("# Sistem Folha de Pagamento #", "\n")
		escreva("-----------------------------------" , "\n")
		escreva("Nome do Funcionario: ", "\n")
		leia(nome)
		escreva("# P R O V E N T O S #", "\n")
		escreva("R$ Salario Mensal: ",  "\n")
		leia(SalarioMensal)
		escreva("R$ Bonificação: ", "\n")
		leia(Bonificacao)
		escreva("# D E S C O N T O S #", "\n")
		escreva("R$ Convenio" , "\n")
		leia(Convenio)
		
		escreva("calculando.....", "\n")
		limpa() //Limpa tela
		
		//Calculo salario bruto
		SalarioBruto = (SalarioMensal + Bonificacao)

		/**********************************************
		 * DESCONTOS
		**********************************************/
		//INSS
		se (SalarioBruto > 0 e SalarioBruto <= 1000) {
			INSS = (SalarioBruto * 0.05)
		}senao 
		se(SalarioBruto > 1000 e SalarioBruto <= 2000){
			INSS = (SalarioBruto * 0.07)
		}senao
		se(SalarioBruto > 2000){
			INSS = (SalarioBruto * 0.11)
		}

		//IRPF
		se (SalarioBruto >= 1800 e SalarioBruto <= 2900) {
			IRPF = (SalarioBruto * 0.04)
		}senao 
		se(SalarioBruto > 2900 e SalarioBruto <= 5000){
			IRPF = (SalarioBruto * 0.07)
		}senao
		se(SalarioBruto > 5000){
			IRPF = (SalarioBruto * 0.11)
		}

		//Salario Liquido
		SalarioLiquido = SalarioBruto - ( INSS + IRPF + Convenio)

		//Impressao do resultado		
		escreva("# R E S U L T A D O #", "\n")
		escreva("Salario Bruto -> R$ ", SalarioBruto,"\n")
		escreva("INSS -> R$ ", INSS,"\n")
		escreva("IRPF -> R$ ", IRPF,"\n")
		escreva("Convenio -> R$ ", Convenio,"\n")
		escreva("Salario Liquido-> R$ ", SalarioLiquido, "\n")
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1943; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */