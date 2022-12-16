on = true
print("Bem vindo(a) ao HUB do Xucrutech :)")
escolha = "0"
while on == true do
    while escolha == "0" do
        print("O que deseja fazer?")
        print("(1) Localizar T1 | (2) Desligar")
        escolha = read()
    end
    while escolha == "1" do
        stop = false
        while stop == false do
            local id, msg = rednet.receive(14, 5)
            if not id then
                print("Não foi possivel localizar, desculpe.")
            else
                local cord = textutils.unserialise(msg)
                print(("T1 %d está em %s, %s, %s"):format(id, cord[1], cord[2], cord[3]))
            end
            print("Deseja retornar? (S) / (N)")
            esc2 = read()
            if esc2 == "S" or "s" then
                stop = true
                escolha = "0"
            else
                stop = false
            end
        end
    end
    if escolha == "2" then
        print("Até mais tarde...")
        sleep(3)
        on = false
        term.clear()
        term.setCursorPos(1, 1)
    end
end
