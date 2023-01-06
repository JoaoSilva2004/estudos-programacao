local inimigo = require("entidades.inimigo")
local monstro = {}

function monstro.novo(nome)
    monstro = inimigo.novo(100, 40)
    monstro.nome = nome
    monstro.bate = true
    monstro.explode = false

    function monstro.novo_bomber(nome)
        monstro = inimigo.novo(100, 100)
        monstro.nome = nome
        monstro.bate = false
        monstro.explode = true
    
        return monstro
    end
    
    function monstro.Atacar (self, plr)
        if self.explode == false then
            print(self.nome .. " atacou " .. plr.nome .. "!")
            plr:SofrerDano(self.forca)
        else
            print(self.nome .. " explodiu!")
            plr:Morrer()
        end
    end

    return monstro
end


return monstro