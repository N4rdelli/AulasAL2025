# Aula 03 - 28-02-2025 -  Variáveis e Operadores

## Variáveis no VisuAlg
### Variáveis
> Representam espaços na memória do computador destinados a armazenar valores que podem ser manipulados durante a execução de um programa.

### Declaração
> No VisuAlg, uma variável deve ser declarada antes de ser utilizada.

> A declaração ocorre na seção ```Var```, onde especificamos o nome da variável e seu tipo de dado.

* ```idade : inteiro```
* ```nome : caractere```.

### Tipos de variáveis

* ```inteiro``` : define variáveis numéricas do tipo inteiro, ou seja, sem casas decimais.
* ```real``` : define variáveis numéricas do tipo real, ou seja, com casas decimais.
* ```caractere``` : define variáveis do tipo string, ou seja, cadeia de caracteres.
* ```logico``` : define variáveis do tipo booleano, ou seja, com valor VERDADEIRO ou FALSO.

## Entrada e Saída de Dados
### Entrada de Dados
> Permite que o usuário forneça informações ao programa.
* ```leia(nome)```: recebe um caractere ou uma cadeia de caracteres. 
* ```leia(idade)```: recebe um número inteiro.

### Saída de Dados
> Exibe informações para o usuário.
* ```escreva("Nome: ", nome)```: escreve a mensagem na mesma linha da última mensagem exibida.
* ``` escreval("Idade: ", idade)```: escreve a mensagem e, em seguida, pula para a próxima linha. 

### Comentários
> Permite que comentários sejam escritos no códgio e ignorados pelo interpretador.

> Qualquer texto precedido de "//" é ignorado até atingir o final de sua linha

``` // Autora do código: Anelize Nardelli ```

## Operadores
### Operadores de Comparação
* ``` <- ```: Atribui um valor a uma variável.
* ``` = ```: Verifica se os valores são iguais.
* ``` <> ```: Verifica se os valores são diferentes.
* ``` > ```: Verifica se um valor é maior que outro.
* ``` < ```: Verifica se um valor é menor que outro.
* ``` >= ```: Verifica se um valor é maior ou igual que outro.
* ``` <= ```: Verifica se um valor é menor ou igual que outro.

### Operadores Aritiméticos
* ``` + ```: Soma um valor com outro.
* ``` - ```: Subtrai um valor de outro.
* ``` * ```: Multiplica valores.
* ``` / ```: Divide um valor pelo outro.
* ``` % ```: Retorna o resto de uma divisão inteira.

### Operadores Lógicos
* ``` E ```: Retorna verdadeiro se ambas as condições forem verdadeiras.
* ``` OU ```: Retorna verdadeiro se uma das condições forem verdadeiras.
* ``` NÃO ```: Inverte o valor lógico.

# Exercício
Calcule a comissão de um vendedor de frios de acordo com a tabela. 

| Produto  | Preço por Kg | Comissão |
| -------- | ------------ | -------- |
| Mussarela | R$56,20 | 3% |
| Presunto | R$78,20 | 5% |
| Peito de Peru | R$89,60 | 10% |
| Mortadela | R$25,90 | 8% |

Faça um algoritmo que leia a quantidade vendida e apresente o total de:

1. Vendido por produto
2. Valor da comissão de cada produto
3. Vendas
4. Comissão