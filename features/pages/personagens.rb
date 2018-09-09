require 'httparty'

class TestAPI
    include HTTParty
    base_uri 'https://gateway.marvel.com'

    def buscar_cinco_personagens
        response = self.class.get("/v1/public/characters?ts=123456789&apikey=b11a095407637034550bfe4bcf2fb1d1&hash=1c7f75251fd28ccee182c7f029591a98&limit=5")
        raise 'Erro na requisição da API' if response.code != 200
    end

    def buscar_personagem
        response = self.class.get('/v1/public/characters/1009144?ts=123456789&hash=1c7f75251fd28ccee182c7f029591a98&apikey=b11a095407637034550bfe4bcf2fb1d1')
        raise 'Erro na requisição da API' if response.code != 200
    end

    def buscar_comics
        response = self.class.get('/v1/public/characters/1009144/comics?ts=123456789&hash=1c7f75251fd28ccee182c7f029591a98&apikey=b11a095407637034550bfe4bcf2fb1d1')
        raise 'Erro na requisição da API' if response.code != 200
    end
    
    def validar_cinco_personagens
        response = self.class.get("/v1/public/characters?ts=123456789&apikey=b11a095407637034550bfe4bcf2fb1d1&hash=1c7f75251fd28ccee182c7f029591a98&limit=5")
        raise 'Erro no Contrato da API' if response['data']['results'][0]['name'].is_a?(String) != true
        raise 'Erro no Contrato da API' if response['data']['results'][1]['name'].is_a?(String) != true
        raise 'Erro no Contrato da API' if response['data']['results'][2]['name'].is_a?(String) != true
        raise 'Erro no Contrato da API' if response['data']['results'][3]['name'].is_a?(String) != true
        raise 'Erro no Contrato da API' if response['data']['results'][4]['name'].is_a?(String) != true
    end

    def validar_personagem
        response = self.class.get('/v1/public/characters/1017100?ts=123456789&hash=1c7f75251fd28ccee182c7f029591a98&apikey=b11a095407637034550bfe4bcf2fb1d1')
        raise 'Erro no Contrato da API' if response['code'].is_a?(Integer) != true
        raise 'Erro no Contrato da API' if response['status'].is_a?(String) != true
        raise 'Erro no Contrato da API' if response['copyright'].is_a?(String) != true
        raise 'Erro no Contrato da API' if response['attributionText'].is_a?(String) != true
        raise 'Erro no Contrato da API' if response['attributionHTML'].is_a?(String) != true
        raise 'Erro no Contrato da API' if response['etag'].is_a?(String) != true
    end

     def validar_comics_personagens
        response = self.class.get('/v1/public/characters/1009144/comics?ts=123456789&hash=1c7f75251fd28ccee182c7f029591a98&apikey=b11a095407637034550bfe4bcf2fb1d1')
        raise 'Erro no Contrato da API' if response['data']['results'][0]['title'].is_a?(String) != true
    end




end