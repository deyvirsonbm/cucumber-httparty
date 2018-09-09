# language: pt
# coding: utf-8

Funcionalidade: Listar Personagens

A funcionalidade listar personagens, ela serve não apenas para listar os personagens, mas também
para uma série de informações que podem ser adiquiridas a partir de determinada busca.

Critérios de aceite:
1- Gostaria de listar 5 personagens;
2- Gostaria de listar informações sobre um usuário específico;
3- Gostaria de filtrar comics de acordo com um usuário específico.

Cenário: Listar 5 Personagens
    Dado que o usuário tem acesso a API da marvel
    Quando buscar por cinco personagens
    Então visualiza as informações de cinco personagens

Cenário: Listar Personagem Específico
    Dado que o usuário tem acesso a API da marvel
    Quando buscar por um personagem específico
    Então visualiza as informações do personagem específico

Cenário: Listar Comics de um Personagem
    Dado que o usuário tem acesso a API da marvel
    Quando buscar por comics de um personagem
    Então visualiza as informações de comics do personagem buscado


