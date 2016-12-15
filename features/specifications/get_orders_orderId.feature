#language: pt

Funcionalidade: foods

Cenario: GET serviço de busca de pedido

	Dado que eu acesse o endpoint /orders orderId
	Quando eu bater no endpoint de orderId
	Então irá me trazer o corpo da request com status de sucesso apenas do orderId chamado