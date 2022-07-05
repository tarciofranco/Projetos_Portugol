programa
{
	//Inclui Bibliotecas
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		//Variaveis de controle
		inteiro retorno, contador
		contador = 1

		//Loop para verificar tentativas de acerto de login
		faca{
			//funcao login
			retorno = login()	
			se(contador == 3){
				escreva("Sistema bloqueado")//bloqueia apos a 3 tentativa
				pare //exit
			}
			contador ++ //incremento do contador
			se(retorno == 0 ){
				escreva("Tentativa ", contador, "/3 \n")  //msg ao usuario	
			}
		}enquanto (retorno == 0) //enquanto retornar erro 0

		//login correto, acesso ao sistema
		se(retorno == 1){
			limpa() //Limpa mensagens anteriores
			escreva("Bem Vindo! \n")

			//Chamada da funcao PIX
			u.aguarde(100)
			pix()
		}
	}
	
	

	//Funcao para validar o login/senha do usuario
	funcao inteiro login(){
		cadeia usuario, senha
		escreva("--------------------------------- \n")
		escreva("Login: ")
		leia(usuario)
		escreva("Senha: ")
		leia(senha)
		escreva("--------------------------------- \n")
		
		se(usuario == "admin" e senha == "1234"){			
			retorne 1
		}senao{
			escreva("Usuario/Senha incorretos \n")
			retorne 0
		}	
	}

	//Funcao PIX
	funcao pix(){
				//Variaveis para o PIX
		real ValorMov, SaldoBancario, LimitePIX, SaldoAgendamento
		cadeia ChavePOrigem, ChavePDest, TipoChave
		cadeia DataAgendamento, DataEfetivacao
		cadeia agendamento
		
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
		leia(TipoChave)		
		
		//Validar tipo de chave
		se(TipoChave == "1" ou TipoChave == "2"  ou TipoChave == "3"){
			//
			escreva("Informe o destinatario PIX: ", "\n")
			leia(ChavePDest)
	
			escreva("Valor da Movimentação: ", "\n")
			leia(ValorMov)
			
			escreva("PIX agendado? S=Sim ou N=Não", "\n")
			leia(agendamento)

			//Validacao da opcao de PIX agendado
			se(agendamento != "S" e agendamento != "N"){
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
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 717; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */