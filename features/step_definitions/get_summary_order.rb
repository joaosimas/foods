Dado(/^que eu acesse o endpoint \/orders idOrder summary$/) do
  @response = HTTParty.get('http://dshasdjkajk.com.br/')
  puts "Quantidade existente de rotas: " +@response.size.to_s
end

Quando(/^eu bater no endpoint de order summary$/) do
  @response_id = HTTParty.get('http://dshasdjkajk.com.br/orders/${idOrder}/summary')
end

Então(/^irá me trazer o corpo da request com o resumo do pedido$/) do
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