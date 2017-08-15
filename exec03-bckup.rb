livre = File.open(".ip_livres", "w")
reservado = File.open(".ip_reservado", "w")

ip_livre = IO.readlines("ip_livres")
ip_reservado = IO.readlines("ip_reservado")

#puts ip_livre.class
#puts ip_reservado.class

numero_ip_livre = ip_livre.length
#numero_ip_reservado = ip_reservado.length

posicao = 0

while posicao < numero_ip_livre do
    ip = (ip_livre[posicao])
    puts ip
    if ip_reservado.include?(ip) == FALSE
        ip_reservado.push(ip)
        print "Por favor, use este IP livre #{ip}"
        break
    else
       posicao += 1
    end
end

