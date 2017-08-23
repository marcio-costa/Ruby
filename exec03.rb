require 'logger'

$log = Logger.new('exec03.log')

ip_disponivel = File.read("./ip_livres")
ip_indisponiveis = File.open("./ip_indisponiveis", "w")

puts ip_disponivel

#for ip in ip_disponivel

ip_disponivel.each do |ip|
    if ip_indisponiveis.include?(ip) == TRUE
        ip_indisponiveis.gsub!(/(|\s){ip}(|\s)/, "").chomp!
        ip_indisponiveis = ip_indisponiveis.gsub(/^$\n/, '')
    elsif ip_indisponiveis.include?(ip) == FALSE
        ip_indisponiveis << ip
        puts "Nome do Solicitante?" 
        solicitante = gets.chomp
        $log.info("O Solicitante #{solicitante} recebeu o seguinte ip livre #{ip}")
    else 
        print "Não mais ip disponivel"
    end
end
