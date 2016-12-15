#language: pt

Funcionalidade: foods

Cenario: GET serviço de busca de rotas

	Dado que eu acesse o endpoint /orders routes
	Quando eu bater no endpoint de routes
	Então irá me trazer o corpo da request com status de sucesso da rota inteira