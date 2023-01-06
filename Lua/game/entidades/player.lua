local player = {}

function player.novo(nome)
	return {
		vida = 200,
		pocoes = {},
		nome = nome,

		obter_pocao = function (self, pocao)
			table.insert(self.pocoes, pocao)
		end,

		atacado = function (self, forca)
			if self:vivo() then
				self.vida = self.vida - forca

				if not self:vivo() then
					print("Após o ataque, " .. self.nome .. " morreu!")
				else
					print("Após o ataque, " .. self.nome .. " agora tem " .. self.vida .. " de vida!")
				end
			else
				print(self.nome .. " já está morto!")
			end
		end,

		matar = function (self)
			if self:vivo() then
				self.vida = 0
				print(self.nome .. " morreu!")
			else
				print(self.vida .. " já está morto!")
			end
		end,

		vivo = function (self)
			return self.vida > 0
		end,

		usar_pocao = function (self)
			if #self.pocoes > 0 then
				self.vida = self.vida + self.pocoes[1].vida
				table.remove(self.pocoes, 1)
				print(self.nome .. " usou uma poção e agora tem " .. self.vida .. " de vida!")
			else
				print(self.nome .. " não tem poções!")
			end
		end
	}
end


return player
