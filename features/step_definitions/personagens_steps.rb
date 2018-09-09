Dado("que o usuário tem acesso a API da marvel") do
    @api = TestAPI.new
end

Quando("buscar por cinco personagens") do
    @api.buscar_cinco_personagens
end

Então("visualiza as informações de cinco personagens") do
    @api.validar_cinco_personagens
end

Quando("buscar por um personagem específico") do
    @api.buscar_personagem
end

Então("visualiza as informações do personagem específico") do
    @api.validar_personagem
end

Quando("buscar por comics de um personagem") do
    @api.buscar_comics
end

Então("visualiza as informações de comics do personagem buscado") do
    @api.validar_comics_personagens
end

