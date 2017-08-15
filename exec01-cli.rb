require './exec01-main'

funcao_matematica = ARGV[0]
parametro_1 = ARGV[1]
parametro_2 = ARGV[2]

if funcao_matematica == "adicao"
	adicao(parametro_1.to_i, parametro_2.to_i)
elsif funcao_matematica == "subtracao"
	subtracao(parametro_1.to_i, parametro_2.to_i)
elsif funcao_matematica == "subtracao"
	subtracao(parametro_1.to_i, parametro_2.to_i)
elsif funcao_matematica == "divisao"
	divisao(parametro_1.to_i, parametro_2.to_i)
elsif funcao_matematica == "multiplicacao"
	multiplicacao(parametro_1.to_i, parametro_2.to_i)
end
