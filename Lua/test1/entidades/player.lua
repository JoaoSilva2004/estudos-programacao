local inimigo = require("entidades.inimigo")
local pocao = require("entidades.pocao")
local player = {}

function player.novo(nome, vida, dano)
    return {
        nome = nome,
        vida = vida,
        dano = dano,
        defesa = 0,
        inventario = {},

        Morrer = function(self)
            self.vida = 0
            print(" " .. self.nome .. " morreu.")
        end,

        SofrerDano = function(self, dano)
            local defensePercent = dano / 100 * self.defesa
            local damageValue = dano - defensePercent

            if self.vida > 0 then
                self.vida = self.vida - damageValue
                if self.vida > 0 then
                    print(" Após o ataque, " .. self.nome .. " agora tem " .. math.ceil(self.vida) .. " pontos de vida.")
                else
                    print(" Após o ataque, " .. self.nome .. " morreu.")
                end
            else
                print(" " .. self.nome .. " já está morto!")
            end

            self.defesa = 0

            return self
        end,

        Atacar = function(self,inm)
            inm:SofrerDano(self.forca)
        end,

        ObterItem = function(self, tipo, quant)
            for i = 1, quant do
                local pocao = pocao.novo(tipo)
                table.insert(self.inventario, pocao)
                print(" " .. self.nome .. " obteve um item do tipo " .. pocao.tipo .. ".")
            end
            return self
        end,

        UsarItem = function(self, item)
            if self.vida > 0 then
                if #self.inventario > 0 then
                    local item = self.inventario[item]
                    if item.tipo == "Cura" then
                        self.vida = self.vida + item.cura
                        print(self.nome .. " usou uma poção de " .. item.tipo .. " e agora tem " .. math.ceil(self.vida) .. " de vida.")
                    elseif item.tipo == "Ataque" then
                        self.dano = self.dano + item.ataque
                        print(self.nome .. " usou uma poção de " .. item.tipo .. " e agora tem " .. self.dano .. " de ataque.")
                    elseif item.tipo == "Defesa" then
                        self.defesa = self.defesa + item.defesa
                        print(self.nome .. " usou uma poção de " .. item.tipo .. " e agora tem " .. self.defesa .. " de defesa.")
                    end
                    table.remove(self.inventario, 1)
                else
                    print(self.nome .. " não possui mais itens!")    
                end
            else
                print(self.nome .. " não pode usar poções, pois está morto.")
            end
                
            return self
        end,
    }
end

return player