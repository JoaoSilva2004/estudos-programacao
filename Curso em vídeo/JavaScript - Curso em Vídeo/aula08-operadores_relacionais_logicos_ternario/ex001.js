// Operadores Relacionais

true == false; // false
true != false; // true

let x = 5;
let y = '5';

x == y; // (x é igual a y?) - true (por incrível que pareça)

x != y; // (x é diferente de y?) - false
/* Caso compare 5 (Number) com 5 (String)
utilizando o operador ' == ', JavaScript ignora
os tipos e compara apenas o conteúdo. */

// Operadores de Identidade / Operadores Identificadores

x === y; // (x é IDÊNTICO a y? | x é ESTRITAMENTE IGUAL a y?) - false

x !== y; // (x é ESTRITAMENTE DIFERENTE de y?) - true
/* O operador ' === ' (IDÊNTICO A) compara também os tipos. */

// Operadores Lógicos

let a = 5;
let b = 8;

a > b && b % 2 == 0; // && significa and | false
a > b || b % 2 == 0; // || significa or | true

// Operador ternário

let menor = a < b ? 'Sim' : 'Não'; // menor recebe 'Sim'
/* "a é maior que b? se sim - 'Sim',
caso contrário - 'Não'." */

let maior = a > b ? 'Sim' : 'Não'; // maior recebe 'Não';
