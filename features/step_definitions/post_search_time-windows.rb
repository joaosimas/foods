Quando(/^eu passar os parametros necessários com o verbo POST$/) do
  @createbody = { 
   "timeWindows":[ 
      { 
 
         "timeWindowId": 2,
         "deliveryDate": "2016-09-13",
         "name": "Primeira Janela",
         "startTime": "06:00:00",
         "endTime": "12:00:00",
         "ordersSummary":[
            {
            "route": {
              "idRoute": 123345, 
              "name":"C"
            },
            "totalOrders":14
            },
            { 
            "route": {
              "idRoute": 2321, 
              "name":"B"
            },
            "totalOrders":30
            }
         ]
      }
   ],
   "paging":{ 
      "total":300,
      "offset":1,
      "limit":10
   }
}.to_json
  @create = HTTParty.post("http://dshasdjkajk.com.br/search/time-windows",
    :body => @createbody,
    :headers => {
      "Content-Type" => 'application/json'}
  )
end

Então(/^a janela será criada com sucesso$/) do
  puts @create.to_json, @create.message
end
