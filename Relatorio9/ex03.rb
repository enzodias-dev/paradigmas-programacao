class PhoneWave
  def enviar_dmail(mensagem)
    puts "Mensagem: #{mensagem}"
    puts "D-mail enviado para o passado!"
  end
end

class MembroDoLab
  attr_reader :numero, :nome

  def initialize(numero, nome)
    @numero = numero
    @nome = nome
  end
end

class LaboratorioDeGadgets
  def initialize
    @phonewave = PhoneWave.new
    @membros = []
  end

  def admitir(membro)
    @membros << membro
    puts "Membro #{membro.numero}: #{membro.nome} foi admitido no laboratório."
  end

  def experimento(mensagem)
    @membros.each do |membro|
      puts "#{membro.numero}: #{membro.nome}"
    end

    @phonewave.enviar_dmail(mensagem)
  end
end

okabe = MembroDoLab.new(1, "Rintaro Okabe")
kurisu = MembroDoLab.new(2, "Kurisu Makise")

laboratorio = LaboratorioDeGadgets.new
laboratorio.admitir(okabe)
laboratorio.admitir(kurisu)
laboratorio.experimento("Não confie na mensagem recebida amanhã.")