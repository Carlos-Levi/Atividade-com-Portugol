programa 
{ 
 const inteiro TAM = 10
 inteiro pilha[TAM], topo 
 funcao inicializar(){ 
 topo = -1 
 } 
 
 funcao inteiro verificacaoCheia(){ 
 se (topo == TAM-1){ 
 retorne 1 
    
  }senao{ 
  retorne 0 
  } 
  
 } 
 funcao inteiro verificacaoVazia(){ 
 se (topo == -1){ 
 retorne 1    
 }  
  senao { 
  retorne 0 
  } 
  
 } 
 funcao empilhar(){ 
 inteiro valor, pilhaCheia 
 pilhaCheia = verificacaoCheia() 
 se (pilhaCheia == 0){ 
 leia(valor) 
 topo++ 
 pilha[topo] = valor 
 }  
 senao { 
 escreva("pilha Cheia \n") 
 } 
 
 } 
 funcao desempilhar(){ 
 inteiro pilhaVazia 
 pilhaVazia = verificacaoVazia() 
 se (pilhaVazia == 1){ 
 escreva("pilha Vazia \n")  
 } 
   
 senao { 
 topo-- 
 } 
 
  } 
  funcao Lista() { 
  escreva ("\n-----Pratos Listados------\n") 
  para (inteiro cont = 0; cont <= topo; cont++){ 
  escreva(" \n", pilha[cont]) 
    
  } 
  escreva("\n") 
  } 
  funcao encerrar(){
  se( TAM != -1){
  	escreva ("ENCERRANDO")	
  }
  }
 
  funcao inicio(){ 
  inicializar() 
 
 
  inteiro opcao 
 
  faca { 
  escreva ("####### Pratos #######\n") 
 
  escreva("# 1 – INCLUIR PRATO #\n") 
  escreva("# 2 - RETIRAR PRATO #\n") 
  escreva("# 3 - LISTAR PRATOS #\n") 
  escreva("# 4 – ENCERRAR      #\n") 
  escreva("#####################\n") 
 
   escreva("Digite a opção: ") 
   leia(opcao) 
   
 
   escolha (opcao){ 
   caso 1: escreva("Digite o número do prato: ") 
           empilhar() 
           pare 
   caso 2: escreva("retirando prato...\n") 
           desempilhar() 
           pare 
   caso 3: escreva("Lista de pratos\n") 
           Lista() 
           pare         
   caso 4: encerrar()
           pare 
 
   caso contrario : escreva("Opção Inválida \n") 
}  
    
}  
enquanto (opcao != 4) 
       
} 
}
