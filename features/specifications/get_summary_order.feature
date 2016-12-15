#language: pt

Funcionalidade: foods

Cenario: GET serviço resumo do pedido

	Dado que eu acesse o endpoint /orders idOrder summary
	Quando eu bater no endpoint de order summary
	Então irá me trazer o corpo da request com o resumo do pedido