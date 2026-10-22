class Instrumentista
  attr_reader :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def interpretar(peca)
    raise NotImplementedError, "A classe filha deve implementar interpretar"
  end
end

class Solista < Instrumentista
  def interpretar(peca)
    puts "#{nome}, no instrumento #{instrumento}, conduz a melodia principal de #{peca}."
  end
end

class Acompanhador < Instrumentista
  def interpretar(peca)
    puts "#{nome}, no instrumento #{instrumento}, acompanha o ritmo do solista em #{peca}."
  end
end

class Regente
  def initialize(nome)
    @nome = nome
    @orquestra = []
  end

  def convocar(instrumentista)
    @orquestra << instrumentista
  end

  def reger(peca)
    puts "#{@nome} rege a peça #{peca}."

    @orquestra.each do |instrumentista|
      instrumentista.interpretar(peca)
    end
  end

  def escalacao
    @orquestra.map do |instrumentista|
      "#{instrumentista.class} - #{instrumentista.nome}"
    end
  end
end

solista = Solista.new("Kaori", "piano")
acompanhador = Acompanhador.new("Takeshi", "violino")
regente = Regente.new("Maestro Saito")

regente.convocar(solista)
regente.convocar(acompanhador)
regente.reger("Concerto da Primavera")

regente.escalacao.each do |integrante|
  puts integrante
end

instrumentista_generico = Instrumentista.new("Ren", "violoncelo")