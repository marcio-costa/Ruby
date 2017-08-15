require 'logger'

$log = Logger.new('exec03.log')

ip_livre = IO.readlines("./ip_livres")
ip_reservado = IO.readlines("./ip_reservado")

numero_ip_livre = ip_livre.length

posicao = 0

while posicao <= numero_ip_livre do
    ip = (ip_livre[posicao])
    if ip_reservado.include?(ip) == FALSE
        ip_reservado.push(ip)
        print "Por favor, use este IP livre #{ip}"
        File.open("./ip_reservado", "a+") { |f| f << "#{ip}" }
        break
    else
       posicao += 1
    end
end

while posicao > numero_ip_livre do
    print "Nenhum endereço disponivel nesta subnet, por favor, forneça as informações abaixo"
    print "Nome ?" 
    nome = gets.chomp
    print "Email ?" 
    email = get.chomp
    $log.info("O usuário #{nome} e email #{email} solicitou um IP disponivel")
end