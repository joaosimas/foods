#language: pt

Funcionalidade: foods

Cenario: POST para criar uma nova janela

  Dado que eu acesse o endpoint /search time windows
  Quando eu passar os parametros necessários com o verbo POST
  Então a janela será criada com sucesso
