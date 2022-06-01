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
		real ValorMov, SaldoBancario, LimitePIX, SaldoAgendamento
		cadeia ChavePOrigem, ChavePDest, TipoChave
		cadeia DataAgendamento, DataEfetivacao, agendamento

		//teste();
		
		//Geracao da Chave PIX Origem
		ChavePOrigem = "98764669"

		//Valor inicial do saldo bancario
		SaldoBancario = 1000
		SaldoAgendamento = 0

		//Limite PIX
		LimitePIX = 10000

		//Etapa 01 - Receber valores do usuario
		escreva("Informe o Tipo de Chave PIX do Destinatario: ", "\n")
		escreva("1 = CPF, 2 = Telefone, 3 = Chave Aleatoria", "\n")
		leia(TipoChave);		
		
		//Validar tipo de chave
		se(TipoChave == "1" ou TipoChave == "2"  ou TipoChave == "3"){
			//
			escreva("Informe o destinatario PIX: ", "\n")
			leia(ChavePDest);
	
			escreva("Valor da Movimentação: ", "\n")
			leia(ValorMov);
			
			escreva("PIX agendado? S=Sim ou N=Não", "\n")
			leia(agendamento)

			//Validacao da opcao de PIX agendado
			se(agendamento != "S" ou agendamento != "N"){
				escreva("Opção inválida \n")
			}senao{
				
				se(agendamento == "S"){
					//PIX agendado
					escreva("Data para agendamento: ", "\n")
					leia(DataAgendamento)
					
				se(ValorMov <= LimitePIX){
					//Executar o agendamento e atualizar o saldo agendamento
					SaldoAgendamento = ( SaldoAgendamento + ValorMov )		
				}senao{
					escreva("O valor da movimentação excede o valor de limite do PIX: ", LimitePIX )
				}
				
				}senao{	
					//Verifica Saldo bancario
					se(ValorMov <= SaldoBancario){
						//Verifica Limit PIX
						se(ValorMov <= LimitePIX){							
							//funcao vazio aguarde(1000);
							SaldoBancario = (SaldoBancario - ValorMov)							
							escreva("---------------------------------------", "\n")
							escreva("|         COMPROVANTE PIX             |", "\n")
							escreva("|      PIX Realizado com sucesso      |", "\n")
							escreva("---------------------------------------", "\n")
							escreva("# PIX Destinatario: ", ChavePDest  , "\n")
							escreva("# Valor da Transação: R$ ", ValorMov , "\n")
							escreva("---------------------------------------", "\n")
							
						}senao{
							escreva("O valor da movimentação excede o valor de limite do PIX: ", LimitePIX )
						}		
					}senao{
						escreva("Valor solicitado nao disponivel. Seu saldo e: ", SaldoBancario )
					}
				}//Senao do agendamento		
			}						
		}senao{
			escreva("Tipo de Chave Invalida", "\n")
		}

		
	}


	funcao teste(){
		escreva("abc")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 395; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {agendamento, 14, 42, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */