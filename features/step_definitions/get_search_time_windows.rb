Dado(/^que eu acesse o endpoint \/search time windows$/) do
  @response = HTTParty.get('http://dshasdjkajk.com.br/')
  puts "Quantidade existente de posts: " +@response.size.to_s
end

Quando(/^eu bater no endpoint$/) do
  @response_id = HTTParty.get('http://dshasdjkajk.com.br/search/time-windows')
end

Então(/^irá me trazer o corpo da request com status de sucesso$/) do
  puts @response_id.body
  puts @response_id.message
  case @response_id.code
    when 200
      puts "É disso que eu to falando!!!"
    when 404
      puts "Deu ruim, vulgo Not Found."
    when 500...600
      puts "Xiiii #{response.code}"
  end
end