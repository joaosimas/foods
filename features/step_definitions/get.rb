Dado(/^que eu acesse o endpoint \/bla bla bla$/) do
  @response = HTTParty.get('http://blasfs.com.br/blaaaa')
  puts "Quantidade existente de posts: " +@response.size.to_s
end

Quando(/^eu bater no endpoint$/) do
  @response_id = HTTParty.get('http://blasfs.com.br/blaaaa/1')
end

Então(/^request com sucesso$/) do
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

