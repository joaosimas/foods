#language: pt

Funcionalidade: foods

Cenario: GET serviço de busca de status

	Dado que eu acesse o endpoint /orders status
	Quando eu bater no endpoint de status
	Então irá me trazer o corpo da request com status de sucesso apenas do status chamado