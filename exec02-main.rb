#Main

require 'logger'

$log = Logger.new('exec02.log')

def adicao(parametro_1, parametro_2)
   	adicao = parametro_1 + parametro_2
    puts "A soma dos 2 numeros digitados é: #{adicao}"
    $log.info("Executando o metodo ADIÇÃO usando os numeros #{parametro_1} e #{parametro_2}")
end


def subtracao(parametro_1, parametro_2)
	subtracao = parametro_1 - parametro_2
    puts "A subtração do 1º numero menos o 2º numero digitados é: #{subtracao}"
    $log.info("Executando o metodo SUBTRAÇÂO usando os numeros #{parametro_1} e #{parametro_2}")
end


def divisao(parametro_1, parametro_2)
	divisao = parametro_1 / parametro_2
    puts "A divisão do 1º numero pelo 2º numero digitados é: #{divisao}"
    $log.info("Executando o metodo DIVISÂO usando os numeros #{parametro_1} e #{parametro_2}")    
end	


def multiplicacao(parametro_1, parametro_2)
	multiplicacao = parametro_1 * parametro_2
    puts "A multiplicação do 1º numero pelo 2º numero digitados é: #{multiplicacao}"
    $log.info("Executando o metodo MULTIPLICAÇÂO usando os numeros #{parametro_1} e #{parametro_2}")  
end	

