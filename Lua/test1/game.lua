local player = require("entidades.player")
local monstro = require("entidades.monstro")
local pocao = require("entidades.pocao")

-- Criação de instâncias
local player1 = player.novo("Juuji", 100, 10)
local player2 = player.novo("Jeej", 100, 10)

local monstro1 = monstro.novo("Dolool")

--[[local pocao1 = pocao.novo("Cura")
local pocao2 = pocao.novo("Ataque")
local pocao3 = pocao.novo("Defesa")
player1:ObterItem(pocao1, 1)]]

--[[ Monstros atacam os players!
player1:ObterItem("Defesa", 2)
monstro1:Atacar(player1)
player1:ObterItem("Cura", 1)
player1:UsarItem(1)
monstro1:Atacar(player1)
player1:UsarItem(2)
monstro1:Atacar(player1)
player1:UsarItem(1)
monstro1:Atacar(player1)
monstro1:Atacar(player1)
]]