Dado(/^que eu acesse o endpoint \/orders status$/) do
  @response = HTTParty.get('http://dshasdjkajk.com.br/')
  puts "Quantidade existente de rotas: " +@response.size.to_s
end

Quando(/^eu bater no endpoint de status$/) do
  @response_id = HTTParty.get('http://dshasdjkajk.com.br/orders/status')
end

Então(/^irá me trazer o corpo da request com status de sucesso apenas do status chamado$/) do
  puts @response_id.body
  puts @response_id.message
  case @response_id.code
    when 200
      puts "Deu 200"
    when 404
      puts "Deu 404"
    when 500...600
      puts "Deu errado #{response.code}"
  end
end