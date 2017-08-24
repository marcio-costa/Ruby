require 'logger'

$log = Logger.new('exec03.log')

ip_disponivel = File.readlines("./ip_livres")
ip_indisponiveis = File.readlines("./ip_indisponiveis")

achou = 0
ip_disponivel.each do |ip|
    if ip_indisponiveis.include?(ip) != TRUE
        File.open("./ip_indisponiveis", "a+") { |f| f << "#{ip}" }
        puts "Nome do Solicitante?" 
        solicitante = gets.chomp
        $log.info("O Solicitante #{solicitante} recebeu o seguinte ip livre #{ip}")
        achou = 1
        break
    end
end
if achou == 0 
    print "Não mais ip disponivel \n"
end