local player = require("entidades/player")
local inimigo = require("entidades/inimigo")
local zumbi = {}

function zumbi.novo()
		local instancia = inimigo.novo(50, "zumbis")
		instancia.come_cerebros = true
		instancia.explode = false

		function instancia.atacar(self, player_instancia)
			if self == nil then
				print("Esse zumbi já está morto!")
			elseif self.explode then
				print("Zumbi explodiu!")
				player_instancia:matar()
				return nil
			else
				print("Zumbi atacou " .. player_instancia.nome .. "!")
				player_instancia:atacado(self.forca)
				return self
			end
		end

	return instancia
end

function zumbi.novo_bomber()
	local instancia = zumbi.novo()
	instancia.come_cerebros = false
	instancia.explode = true
	return instancia
end

return zumbi
