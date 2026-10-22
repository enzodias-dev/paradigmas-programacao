class CoquetelAfterlife
  attr_reader :nome

  def initialize(nome, preco)
    @nome = nome
    @_preco = preco
  end

  def preco
    @_preco
  end

  def preco=(valor)
    if valor >= 5 && valor <= 200
      @_preco = valor
    else
      puts "Preço inválido!"
    end
  end

  def ficha
    "#{nome} - Preço: R$ #{preco}"
  end
end

class DrinkDeLenda < CoquetelAfterlife
  attr_reader :lenda

  def initialize(nome, preco, lenda)
    super(nome, preco)
    @lenda = lenda
  end

  def ficha
    "#{super} - Homenagem a: #{lenda}"
  end
end

coquetel = CoquetelAfterlife.new("Jackie's Special", 35)
drink1 = DrinkDeLenda.new("Johnny Silverhand", 80, "Johnny Silverhand")
drink2 = DrinkDeLenda.new("Blackhand's Legacy", 120, "Morgan Blackhand")

drinks = [coquetel, drink1, drink2]

drinks.each do |drink|
  puts drink.ficha
end

drink1.preco = 500
drink1.preco = 80
puts drink1.ficha