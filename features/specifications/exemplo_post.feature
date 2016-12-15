#language: pt

Funcionalidade: foods

Cenario: POST para criar uma nova rota

 	Dado que eu acesse o endpoint /orders routes
  	Quando eu passar os parametros necessários com o verbo POST
  	Então a rota será criada com sucesso