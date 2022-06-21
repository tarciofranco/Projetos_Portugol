programa
{
	/****************************************************
	 * Programa: Validador de Login/senha
	 * Autor: Tarcio Franca
	 * Data: 20/06/2022
	****************************************************/
	
	funcao inicio()
	{
		//Variaveis de controle
		inteiro retorno, contador
		contador = 0

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
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 207; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */