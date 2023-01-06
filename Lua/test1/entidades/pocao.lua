local item = require("entidades.item")
local pocao = {}

function pocao.novo(tipo)
    local pocao = item.novo(tipo)

    if pocao.tipo == "Cura" then
        pocao.cura = 30
    elseif pocao.tipo == "Ataque" then
        pocao.ataque = 20
    elseif pocao.tipo == "Defesa" then
        pocao.defesa = 60
    end

    return pocao
end

return pocao
